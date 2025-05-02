//
//  SearchBarIOSVision.swift
//  SymbolPicker
//
//  Created by KamilSzpak on 11/04/2025.
//

import SwiftUI

#if os(macOS)
public struct SearchBar: NSViewRepresentable {
    @State private var enableAutomaticSuggestionFiltering: Bool = false
    @Binding public var text: String
    @Binding private var searchSuggestions: [SearchBarSuggestion]
    @State public var onClearAction: (() -> Void)? = nil
    @State public var onBeginEditingAction: (() -> Void)? = nil
    @State public var onEndEditingAction: (() -> Void)? = nil
    @State private var onSearchButtonClicked: (() -> Void)? = nil
    public let prompt: String
    


    public init(text: Binding<String>, prompt: String = "Search") {
        self._text = text
        self.prompt = prompt
        self._searchSuggestions = .constant([])
    }

    public func makeCoordinator() -> Coordinator { Coordinator(self) }

    public func makeNSView(context: Context) -> NSSearchField {
        let textField = NSSearchField(string: text)
        textField.placeholderString = prompt
        if #available(macOS 15.0, *) {
            textField.suggestionsDelegate = context.coordinator
        }
        textField.delegate = context.coordinator
        textField.bezelStyle = .roundedBezel
        textField.focusRingType = .none
        return textField
    }

    public func updateNSView(_ nsView: NSSearchField, context: Context) {
        nsView.stringValue = text
    }
    
    public class Coordinator: NSObject, NSSearchFieldDelegate, NSTextSuggestionsDelegate {
        var parent: SearchBar
        
        public init(_ parent: SearchBar) {
            self.parent = parent
        }
        
        public typealias SuggestionItemType = String
        
        @available(macOS 15.0, *)
        public func textField(_ textField: NSTextField, provideUpdatedSuggestions responseHandler: @escaping (ItemResponse) -> Void) {
            let currentText = textField.stringValue
            
            let filteredSuggestions = parent.searchSuggestions
                .filter {parent.enableAutomaticSuggestionFiltering ? $0.title.localizedStandardContains(currentText) : true}
                .map { $0.suggestion }
            
            let response = ItemResponse(items: filteredSuggestions)
            responseHandler(response)
        }
        
        public func controlTextDidBeginEditing(_ obj: Notification) {
            guard obj.object is NSTextField else { return }
            if let action = parent.onBeginEditingAction{
                action()
            }
        }
        
        
        public func controlTextDidEndEditing(_ obj: Notification) {
            guard obj.object is NSTextField else { return }
            if let action = parent.onEndEditingAction{
                action()
            }
        }
        
        public func controlTextDidChange(_ obj: Notification) {
            guard let field = obj.object as? NSTextField else { return }
            parent.text = field.stringValue
            if let action = parent.onSearchButtonClicked{
                action()
            }
            if let clearFunction = parent.onClearAction, parent.text.isEmpty {
                clearFunction()
            }
        }
    }
    
    func updatePerformOnClear(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onClearAction = State(initialValue: action)
        return copy
    }
    
    func updateSearchSuggestions(_ suggestions: Binding<[SearchBarSuggestion]>) -> Self {
        var copy = self
        copy._searchSuggestions = suggestions
        return copy
    }
    
    func updateEnableAutomaticSuggestionFiltering(_ value: Bool) -> Self {
        var copy = self
        copy._enableAutomaticSuggestionFiltering = State(initialValue: value)
        return copy
    }
    
    func updatePerformOnSearch(_ action: @escaping () -> Void) -> Self{
        var copy = self
        copy._onSearchButtonClicked = State(initialValue: action)
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
}

#endif

