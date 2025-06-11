//
//  SearchBariOSVision.swift.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import SwiftUI

#if os(iOS) || os(visionOS)
public struct SearchBar: UIViewRepresentable{
    @Binding var text: String
    
    var cancelButtonDisplayMode = SearchBarCancelButtonDisplayMode.whileEditing
    var clearButtonDisplayMode = SearchBarClearButtonDisplayMode.always
    var style = SearchBarStyle.rounded
    var iconView: AnyView? = nil
    var searchSuggestions: Binding<[SearchBarSuggestion]> = .constant([])
    var enabledAutomaticFiltering = false
    var filteringAction: ((String, SearchBarSuggestion)-> Bool)? = nil
    var currentTokens: Binding<[SearchBarToken]> = .constant([])
    var material: SearchBarMaterial = .solid
    var returnKeyType: UIReturnKeyType = .default
    var keyboardType: UIKeyboardType? = nil
    var autoCorrectionType: UITextAutocorrectionType = .default
    var textContentType: UITextContentType? = nil
    var autoCapitalizationType: UITextAutocapitalizationType? = nil
    var scale: SearchBarScale = .small
    var isUsingCustomFocus = false
    var isFocused: Binding<Bool> = .constant(false)
    var cancelButtonAction: (() -> Void)? = nil
    var clearButtonAction: (() -> Void)? = nil
    var searchBeginEditingAction: (() -> Void)? = nil
    var searchChangeAction: ((String) -> Void)? = nil
    var searchEndEditingAction: (() -> Void)? = nil
    
    var searchTokenSuggestions: Binding<[SearchBarToken]> = .constant([])
    
    var suggestions: [SearchBarSuggestion]{
        Set(searchTokenSuggestions.wrappedValue.map{ SearchBarSuggestion(text: $0.text, systemName: $0.systemName, token: $0) }).sorted() + Set(searchSuggestions.wrappedValue).sorted()
    }
    
    var filteredSuggestions: [SearchBarSuggestion]{
        suggestions.filter{
            if let filteringAction{
                return enabledAutomaticFiltering ? filteringAction(text.trimmingCharacters(in: .whitespacesAndNewlines), $0) : true
            }else{
                return enabledAutomaticFiltering ? $0.text.localizedStandardContains(text) && text.count > 2 && ($0.token != nil ? true : text.count != $0.text.count) : true
            }
        }
    }
    let prompt: String?
    
    
    public init(text: Binding<String>, prompt: String? = nil) {
        self._text = text
        self.prompt = prompt
    }
    
    @_documentation(visibility: internal)
    public func makeUIView(context: Context) -> UISearchBar {
        let searchBar = configStyle()
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = prompt ?? "Search"
        searchBar.delegate = context.coordinator
        searchBar.searchTextField.delegate = context.coordinator
        if let keyboardType{ searchBar.searchTextField.keyboardType = keyboardType; searchBar.keyboardType = keyboardType }
        if let autoCapitalizationType{ searchBar.searchTextField.autocapitalizationType = autoCapitalizationType }
        searchBar.searchTextField.autocorrectionType = autoCorrectionType
        searchBar.searchTextField.textContentType = textContentType
        if (isUsingCustomFocus && isFocused.wrappedValue){
            searchBar.searchTextField.becomeFirstResponder()
        }else if (isUsingCustomFocus && !isFocused.wrappedValue){
            searchBar.searchTextField.resignFirstResponder()
        }
        // Add 10pt left padding to the search text field
        if let iconView{
            let view = UIHostingController(rootView: iconView).view
            view?.backgroundColor = .clear
            searchBar.searchTextField.leftView = view
        }
        searchBar.searchTextField.tokens = currentTokens.wrappedValue.map(\.searchToken)
        searchBar.searchTextField.clearButtonMode = clearButtonDisplayMode.uiTextFieldViewMode
        if cancelButtonDisplayMode == .always{
            searchBar.showsCancelButton = true
        }
        searchBar.searchTextField.returnKeyType = returnKeyType
        searchBar.returnKeyType = returnKeyType
        return searchBar
    }
    
    @_documentation(visibility: internal)
    public func updateUIView(_ uiView: UISearchBar, context: Context) {
        if uiView.text != text{
            uiView.text = text
        }
        if let changeAction = searchChangeAction{
            changeAction(text)
        }
        if (isUsingCustomFocus && isFocused.wrappedValue){
            uiView.searchTextField.becomeFirstResponder()
        }else if (isUsingCustomFocus && !isFocused.wrappedValue){
            uiView.searchTextField.resignFirstResponder()
        }
        uiView.searchTextField.tokens = currentTokens.wrappedValue.map(\.searchToken)
        if #available(iOS 16.0, *), uiView.isFirstResponder {
            uiView.searchTextField.searchSuggestions = filteredSuggestions.map { $0.suggestion }
        }
        let _ = configStyle(view: uiView)
    }
    
    @_documentation(visibility: internal)
    public func makeCoordinator() -> SearchBarCoordinator { SearchBarCoordinator(self) }

    @_documentation(visibility: internal)
    public func configStyle(view: UISearchBar? = nil) -> UISearchBar{
        #if os(visionOS)
        let uiView = view ?? SearchStyleVisionOS()
        uiView.layer.cornerRadius = style.cornerRadius * scale.cornerScale
        uiView.searchTextField.backgroundColor = UIColor(style.backgroundColor)
        #else
        let uiView = view ?? UISearchBar()
        uiView.searchTextField.borderStyle = .none
        if #available(iOS 17.0, *) {uiView.searchTextField.hoverStyle = UIHoverStyle(shape: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))}
        uiView.searchTextField.layer.cornerRadius = style.cornerRadius * scale.cornerScale
        uiView.searchTextField.backgroundColor = UIColor(style.backgroundColor)
        #endif
        if let tintColor = style.tintColor{ uiView.searchTextField.tintColor = UIColor(tintColor); uiView.tintColor = UIColor(tintColor) }
        if let tokenBackground = style.tokenBackground{ uiView.searchTextField.tokenBackgroundColor = UIColor(tokenBackground) }

        if let textColor = style.textColor{uiView.searchTextField.textColor = UIColor(textColor)}
        
        #if !os(visionOS)
        if #available(iOS 26.0, *), material == .glass {

            let glassEffect = UIGlassEffect()
            uiView.searchTextField.backgroundColor = UIColor(.clear)
            uiView.backgroundColor = UIColor(.clear)
            glassEffect.isInteractive = true
            if style.usesCustomBackground{
                glassEffect.tintColor = UIColor(style.backgroundColor)
            }
                let oldView = uiView.viewWithTag(100)
                oldView?.removeFromSuperview()
                let glassView = UIVisualEffectView(effect: glassEffect)
                glassView.layer.cornerRadius = style.cornerRadius * scale.cornerScale
                glassView.translatesAutoresizingMaskIntoConstraints = false
                glassView.tag = 100
            
                uiView.insertSubview(glassView, at: 0)
                NSLayoutConstraint.activate([
                    glassView.centerYAnchor.constraint(equalTo: uiView.centerYAnchor),
                    glassView.leadingAnchor.constraint(equalTo: uiView.searchTextField.leadingAnchor),
                    glassView.heightAnchor.constraint(equalTo: scale == .small ? uiView.searchTextField.heightAnchor : uiView.heightAnchor, multiplier: scale.heightMultiplier),
                    glassView.widthAnchor.constraint(equalTo: uiView.searchTextField.widthAnchor)
                ])
        }else{
            uiView.searchTextField.backgroundColor = UIColor(.clear)
            // If material is not glass, use a solid color background similar to the glass view layout, applying the same constraints for consistency.
            let solidTag = 101
            if let oldSolidView = uiView.viewWithTag(solidTag) {
                oldSolidView.removeFromSuperview()
            }
            let solidView = UIView()
            solidView.backgroundColor = UIColor(style.backgroundColor)
            solidView.layer.cornerRadius = style.cornerRadius * scale.cornerScale
            solidView.translatesAutoresizingMaskIntoConstraints = false
            solidView.tag = solidTag
            uiView.insertSubview(solidView, at: 0)
            NSLayoutConstraint.activate([
                solidView.centerYAnchor.constraint(equalTo: uiView.centerYAnchor),
                solidView.leadingAnchor.constraint(equalTo: uiView.searchTextField.leadingAnchor),
                solidView.heightAnchor.constraint(equalTo: scale == .small ? uiView.searchTextField.heightAnchor : uiView.heightAnchor, multiplier: scale.heightMultiplier),
                solidView.widthAnchor.constraint(equalTo: uiView.searchTextField.widthAnchor)
            ])
        }
        #endif
        
        
        return uiView
    }
}

@_documentation(visibility: internal)
public class SearchBarCoordinator: NSObject, UISearchBarDelegate, UISearchTextFieldDelegate{
    let parent: SearchBar
    
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if let clearAction = parent.clearButtonAction{
            if (searchText.isEmpty && parent.text.count > 1) || (searchText.isEmpty && !searchBar.isFirstResponder){
                clearAction()
            }
        }
        parent.currentTokens.wrappedValue = parent.currentTokens.wrappedValue.filter{ token in
            searchBar.searchTextField.tokens.map{ $0.representedObject as? String }.contains(token.searchToken.representedObject as? String) }
        parent.text = searchText
    }
    
    public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        if let beginAction = parent.searchBeginEditingAction{
            beginAction()
        }
        if parent.isUsingCustomFocus{
            parent.isFocused.wrappedValue = true
        }
        if parent.cancelButtonDisplayMode == .whileEditing {
            searchBar.setShowsCancelButton(true, animated: true)
        }
    }
    
    public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        if let endAction = parent.searchEndEditingAction{
            endAction()
        }
        if parent.isUsingCustomFocus{
            parent.isFocused.wrappedValue = false
        }
        if parent.cancelButtonDisplayMode == .whileEditing {
            searchBar.setShowsCancelButton(false, animated: true)
        }
    }
    
    public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        if let cancelButtonAction = parent.cancelButtonAction{
            cancelButtonAction()
        }
    }
    
    @available(iOS 16.0, *)
    public func searchTextField(_ searchTextField: UISearchTextField, didSelect suggestion: any UISearchSuggestion) {
        // Extract the suggestion text safely
        guard let suggestionText = suggestion.localizedSuggestion else {
            print("Warning: No text found in suggestion")
            return
        }
        
        if let suggestionMatched = parent.suggestions.first(where: { $0.text == suggestionText }){
            if let token = suggestionMatched.token{
                parent.text = ""
                parent.currentTokens.wrappedValue.append(token)
            }else{
                parent.text = suggestionText
                searchTextField.text = suggestionText
            }
        }
        searchTextField.searchSuggestions = parent.filteredSuggestions.map(\.suggestion)
    }
    
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    init(_ parent: SearchBar) {
        self.parent = parent
    }
}

@_documentation(visibility: internal)
public class SearchStyleVisionOS: UISearchBar {
    private var didObserveSubviews = false
    public var desiredCornerRadius = 22.0
    private var observedLayers = NSHashTable<CALayer>.weakObjects()
    
    public override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
     
        // Adding to window
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
        guard layer.cornerRadius != desiredCornerRadius else { return }
        layer.cornerRadius = desiredCornerRadius
    }
}

#endif

