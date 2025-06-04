//
//  Modifiers.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import SwiftUI

public extension SearchBar{
    #if !os(macOS)
    func searchBarCancelButtonDisplayMode(_ mode: SearchBarCancelButtonDisplayMode) -> SearchBar {
        var copy = self
        copy.cancelButtonDisplayMode = mode
        return copy
    }
    func searchBarCancelButtonAction(_ action: @escaping () -> Void) -> SearchBar {
        var copy = self
        copy.cancelButtonAction = action
        return copy
    }
    func searchBarStyle(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil) -> SearchBar {
        var copy = self
        copy.style = .init(cornerRadius: cornerRadius, textColor: textColor, tint: tint, tokenBackground: tokenBackground, backgroundColor: backgroundColor)
        return copy
    }
    func searchBarStyle(_ style: SearchBarCornerStyle = .rounded, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil) -> SearchBar {
        var copy = self
        copy.style = .init(style: style, textColor: textColor, tint: tint, tokenBackground: tokenBackground, backgroundColor: backgroundColor)
        return copy
    }
    @available(iOS 16.0, *)
    func searchBarCurrentTokens(_ tokens: Binding<[SearchBarToken]>) -> SearchBar {
        var copy = self
        copy.currentTokens = tokens
        return copy
    }
    @available(iOS 16.0, *)
    func searchBarSuggestedTokens(_ tokens: Binding<[SearchBarToken]>) -> SearchBar {
        var copy = self
        copy.searchTokenSuggestions = tokens
        return copy
    }
    
    @available(iOS 16.0, *)
    func searchBarSuggestedTokens(_ tokens: [SearchBarToken]) -> SearchBar {
        var copy = self
        copy.searchTokenSuggestions = .constant(tokens)
        return copy
    }
    
    @available(iOS 16.0, *)
    func searchBarSuggestedTokens(_ suggestions: [SearchBarSuggestion]) -> SearchBar {
        var copy = self
        copy.searchTokenSuggestions = .constant(suggestions.compactMap(\.token))
        return copy
    }
    
    
    func searchBarReturnKeyType(_ type: UIReturnKeyType) -> SearchBar {
        var copy = self
        copy.returnKeyType = type
        return copy
    }
    
    func searchBarKeyboardType(_ type: UIKeyboardType) -> SearchBar {
        var copy = self
        copy.keyboardType = type
        return copy
    }

    func searchBarAutoCorrectionType(_ type: UITextAutocorrectionType = .default) -> SearchBar {
        var copy = self
        copy.autoCorrectionType = type
        return copy
    }
    
    func searchBarAutoCapitalizationType(_ type: UITextAutocapitalizationType) -> SearchBar {
        var copy = self
        copy.autoCapitalizationType = type
        return copy
    }
    
    func searchBarTextContentType(_ type: UITextContentType) -> SearchBar {
        var copy = self
        copy.textContentType = type
        return copy
    }
    #endif

    @available(macOS 12.0, *)
    func searchBarIsFocused(_ value: Binding<Bool>) -> SearchBar {
        var copy = self
        copy.isUsingCustomFocus = true
        copy.isFocused = value
        return copy
    }
    func searchBarStyle(_ style: SearchBarStyle) -> SearchBar {
        var copy = self
        copy.style = style
        return copy
    }
    func searchBarStyle(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil) -> SearchBar {
        var copy = self
        copy.style = .init(cornerRadius: cornerRadius, textColor: textColor, tint: tint, backgroundColor: backgroundColor)
        return copy
    }
    func searchBarStyle(_ style: SearchBarCornerStyle = .rounded, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil) -> SearchBar {
        var copy = self
        copy.style = .init(style: style, textColor: textColor, tint: tint, backgroundColor: backgroundColor)
        return copy
    }
    
    
    
    @available(iOS 16.0, macOS 15.0, *)
    func searchBarSuggestions(_ suggestions: Binding<[SearchBarSuggestion]>) -> SearchBar {
        var copy = self
        copy.searchSuggestions = suggestions
        return copy
    }
    
    @available(iOS 16.0, macOS 15.0, *)
    func searchBarSuggestions(_ suggestions: [SearchBarSuggestion]) -> SearchBar {
        var copy = self
        copy.searchSuggestions = .constant(suggestions)
        return copy
    }
    
    @available(iOS 16.0, macOS 15.0, *)
    func searchBarEnableAutomaticSuggestionsFiltering(_ value: Bool = true, filteringAction: ((String, SearchBarSuggestion)-> Bool)? = nil) -> SearchBar {
        var copy = self
        copy.enabledAutomaticFiltering = value
        copy.filteringAction = filteringAction
        return copy
    }
    
    
    func searchBarClearButtonDisplayMode(_ mode: SearchBarClearButtonDisplayMode) -> SearchBar {
        var copy = self
        copy.clearButtonDisplayMode = mode
        return copy
    }
    func searchBarClearButtonAction(_ action: @escaping () -> Void) -> SearchBar {
        var copy = self
        copy.clearButtonAction = action
        return copy
    }
    func searchBarChangeAction(_ action: @escaping (String) -> Void) -> SearchBar {
        var copy = self
        copy.searchChangeAction = action
        return copy
    }
    func searchBarIconView(_ view: () -> some View) -> SearchBar {
        var copy = self
        var viewWrapped: AnyView
        if #available(iOS 15.0, macOS 12.0, *) {
            viewWrapped = AnyView(
                view().foregroundStyle(.secondary)
            )
        } else {
            viewWrapped = AnyView(
                view().foregroundColor(.secondary)
            )
        }
        copy.iconView = viewWrapped
        return copy
    }
    func searchBarIconView() -> SearchBar {
        var copy = self
        copy.iconView = AnyView(Text(""))
        return copy
    }
    @available(iOS 14.0, macOS 12.0, *)
    func searchBarBeginEditingAction(_ action: @escaping () -> Void) -> SearchBar {
        var copy = self
        copy.searchBeginEditingAction = action
        return copy
    }
    @available(iOS 14.0, macOS 12.0, *)
    func searchBarEndEditingAction(_ action: @escaping () -> Void) -> SearchBar {
        var copy = self
        copy.searchEndEditingAction = action
        return copy
    }
}
