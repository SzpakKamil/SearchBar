//
//  SearchBarMacOS.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import SwiftUI

#if os(iOS) || os(visionOS)
public struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    let prompt: String
    @State private var useRounded: Bool = false
    @State private var onClearAction: (() -> Void)? = nil
    @State private var onBeginEditingAction: (() -> Void)? = nil
    @State private var onEndEditingAction: (() -> Void)? = nil
    @State private var onSearchButtonClicked: (() -> Void)? = nil
    @State private var enableAutomaticSuggestionFiltering: Bool = false
    @Binding private var searchSuggestions: [SearchBarSuggestion]
    @Binding private var currentUsedSearchBarTokens: [SearchBarToken]

    public func makeUIView(context: Context) -> UISearchBar {
        let searchBar = useRounded ? CustomSearchStyle() : UISearchBar()
        searchBar.placeholder = prompt
        searchBar.delegate = context.coordinator
        searchBar.searchTextField.allowsEditingTextAttributes = true
        searchBar.showsCancelButton = false
        searchBar.searchTextField.delegate = context.coordinator
        searchBar.autocapitalizationType = .none
        searchBar.returnKeyType = .done
        return searchBar
    }

    public func updateUIView(_ uiView: UISearchBar, context: Context) {
        // Only update text if different to avoid cursor jumping
        if uiView.text != text {
            uiView.text = text
        }
        uiView.searchBarStyle = .minimal

        // Apply tokens to the search text field
        let tokens = currentUsedSearchBarTokens.map { $0.searchToken }
        uiView.searchTextField.tokens = tokens

        // Apply suggestions if iOS 16.0+ and suggestions are provided
        if #available(iOS 16.0, *) {
            let suggestions = searchSuggestions.filter{ enableAutomaticSuggestionFiltering ? $0.title.localizedStandardContains(text) : true }.map { $0.suggestion }
            uiView.searchTextField.searchSuggestions = suggestions
        }

        // Ensure corner radius is updated if useRounded changes
        if useRounded, let customSearchBar = uiView as? CustomSearchStyle {
            customSearchBar.layer.cornerRadius = 22
        } else if !useRounded, !(uiView is CustomSearchStyle) {
            uiView.layer.cornerRadius = 0
        }
    }

    public func makeCoordinator() -> Coordinator { Coordinator(self) }
    
    public class Coordinator: NSObject, UISearchBarDelegate, UISearchTextFieldDelegate, UITextFieldDelegate {
        var parent: SearchBar

        init(_ searchBar: SearchBar) {
            self.parent = searchBar
        }
        
        public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.text = searchText
            if let action = parent.onClearAction, searchText.isEmpty{
                action()
            }
            syncTokens(from: searchBar)
        }
        
        public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            if let action = parent.onBeginEditingAction{
                action()
            }
            searchBar.setShowsCancelButton(true, animated: true)
        }
        
        public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
            if let action = parent.onEndEditingAction{
                action()
            }
            searchBar.setShowsCancelButton(false, animated: true)
        }
        
        public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            if let action = parent.onSearchButtonClicked{
                action()
            }
            searchBar.resignFirstResponder()
        }
        
        public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }
    
        
        
        @available(iOS 16.0, *)
        public func searchTextField(_ searchTextField: UISearchTextField, didSelect suggestion: any UISearchSuggestion) {
            // Extract the suggestion text safely
            guard let suggestionText = suggestion.localizedAttributedSuggestion?.string else {
                print("Warning: No text found in suggestion")
                return
            }
            
            parent.text = suggestionText
            searchTextField.text = suggestionText

            searchTextField.resignFirstResponder()
        }
        
        private func syncTokens(from searchBar: UISearchBar) {
            // Get current tokens from UISearchBar
            let uiTokens = searchBar.searchTextField.tokens
            
            // Map back to SearchBarToken, preserving only tokens that still exist
            let updatedTokens = uiTokens.compactMap { uiToken -> SearchBarToken? in
                guard let id = uiToken.representedObject as? UUID else { return nil }
                return parent.currentUsedSearchBarTokens.first { $0.id == id }
            }
            
            // Update binding only if tokens have changed to avoid unnecessary updates
            if updatedTokens != parent.currentUsedSearchBarTokens {
                parent.currentUsedSearchBarTokens = updatedTokens
            }
        }
    }
    
    public class CustomSearchStyle: UISearchBar {
        private var didObserveSubviews = false
        private var observedLayers = NSHashTable<CALayer>.weakObjects()
        
        public override func willMove(toWindow newWindow: UIWindow?) {
            super.willMove(toWindow: newWindow)
         
            guard !didObserveSubviews else { return }
            didObserveSubviews = true
            observeSubviews(self)
        }
        
        func observeSubviews(_ view: UIView) {
            if !observedLayers.contains(view.layer) {
                view.layer.addObserver(self, forKeyPath: "cornerRadius", options: [.new], context: nil)
                observedLayers.add(view.layer)
            }
            
            view.subviews.forEach { observeSubviews($0) }
        }
        
        public override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
            guard keyPath == "cornerRadius" else {
                super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
                return
            }
            
            guard let layer = object as? CALayer else { return }
            guard layer.cornerRadius != 22 else { return }
            layer.cornerRadius = 22
        }
    }
    
    public init(
        text: Binding<String>,
        prompt: String = "Search"
    ) {
        self._text = text
        self.prompt = prompt
        self._currentUsedSearchBarTokens = .constant([])
        self._searchSuggestions = .constant([])
        self.onSearchButtonClicked = {}
    }
    
    func updateSearchBarRounded(_ value: Bool) -> Self {
        var copy = self
        copy._useRounded = State(initialValue: value)
        return copy
    }
    
    func updateSearchTokens(_ tokens: Binding<[SearchBarToken]>) -> Self {
        var copy = self
        copy._currentUsedSearchBarTokens = tokens
        return copy
    }
    
    func updateSearchSuggestions(_ suggestions: Binding<[SearchBarSuggestion]>) -> Self {
        var copy = self
        copy._searchSuggestions = suggestions
        return copy
    }
    
    func updatePerformOnClear(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onClearAction = State(initialValue: action)
        return copy
    }
    
    func updatePerformOnBeginEditing(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onBeginEditingAction = State(initialValue: action)
        return copy
    }
    
    func updatePerformOnEndEditing(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onEndEditingAction = State(initialValue: action)
        return copy
    }
    
    func updatePerformOnSearch(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onSearchButtonClicked = State(initialValue: action)
        return copy
    }
    
    func updateEnableAutomaticSuggestionFiltering(_ value: Bool) -> Self {
        var copy = self
        copy._enableAutomaticSuggestionFiltering = State(initialValue: value)
        return copy
    }
}
#endif
