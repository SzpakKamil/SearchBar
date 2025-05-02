//
//  SearchBarWatchOS.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import SwiftUI

#if os(tvOS)
struct SearchBar: UIViewControllerRepresentable{
    
    @Binding var text: String
    @Binding private var searchSuggestions: [SearchBarSuggestion]
    @State private var enableAutomaticSuggestionFiltering: Bool = false
    @State public var onClearAction: (() -> Void)? = nil
    @State public var onBeginEditingAction: (() -> Void)? = nil
    @State public var onSearchButtonClicked: (() -> Void)? = nil
    @State public var onEndEditingAction: (() -> Void)? = nil
    
    let prompt: String
    public init(
        text: Binding<String>,
        prompt: String = "Search"
    ) {
        self._text = text
        self.prompt = prompt
        self._searchSuggestions = .constant([])
    }
    
    func makeUIViewController(context: Context) -> UISearchController {
        let searchBarController = UISearchController()
        searchBarController.searchBar.text = text
        searchBarController.delegate = context.coordinator
        searchBarController.searchBar.delegate = context.coordinator
        return searchBarController
    }
    
    func updateUIViewController(_ uiViewController: UISearchController, context: Context) {
        uiViewController.searchBar.text = text
        let suggestions = searchSuggestions.filter{ enableAutomaticSuggestionFiltering ? $0.title.localizedStandardContains(text) : true }.map { $0.suggestion }
        uiViewController.searchSuggestions = suggestions
    }
    
    func makeCoordinator() -> Coordinator { Coordinator(self) }
    
    public class Coordinator: NSObject, UISearchControllerDelegate, UISearchBarDelegate, UITextFieldDelegate {
        var parent: SearchBar
        
        init(_ searchBar: SearchBar) {
            self.parent = searchBar
        }
        
        
        public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            if let action = parent.onBeginEditingAction{
                action()
            }
        }
        
        public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
            if let action = parent.onEndEditingAction{
                action()
            }
        }
        
        public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.text = searchText
            if let action = parent.onClearAction, searchText.isEmpty{
                action()
            }
        }
        
        public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            if let action = parent.onSearchButtonClicked{
                action()
            }
        }
        //        public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//                    parent.onSearchButtonClicked()
        //            searchBar.resignFirstResponder()
        //        }
        //
        //        public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        //            searchBar.resignFirstResponder()
        //        }
        //
        
        //        @available(iOS 16.0, *)
        //        public func searchTextField(_ searchTextField: UISearchTextField, didSelect suggestion: any UISearchSuggestion) {
        // Extract the suggestion text safely
//        guard let suggestionText = suggestion.localizedAttributedSuggestion?.string else {
//            print("Warning: No text found in suggestion")
//            return
//        }
//        
//        parent.text = suggestionText
//        searchTextField.text = suggestionText
//        
//        searchTextField.resignFirstResponder()
//        //        }
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
