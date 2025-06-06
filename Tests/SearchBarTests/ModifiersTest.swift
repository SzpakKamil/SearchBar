//
//  ModifiersTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
import Testing
@testable import SearchBar
import SwiftUI

struct ModifiersTests {
    
    // MARK: - Helper Setup
    private var baseSearchBar: SearchBar {
        SearchBar(text: .constant(""))
    }
    
    #if !os(macOS)
    // MARK: - Tests for Non-macOS Modifiers
    
    @Test("searchBarCancelButtonDisplayMode updates correctly")
    @MainActor
    func testSearchBarCancelButtonDisplayMode() async throws {
        let mode = SearchBarCancelButtonDisplayMode.always
        let updatedSearchBar = baseSearchBar.searchBarCancelButtonDisplayMode(mode)
        #expect(updatedSearchBar.cancelButtonDisplayMode == mode, "Expected cancelButtonDisplayMode to be updated to \(mode)")
    }
    
    @Test("searchBarCancelButtonAction updates correctly")
    @MainActor
    func testSearchBarCancelButtonAction() async throws {
        var actionCalled = false
        let action: () -> Void = { actionCalled = true }
        let updatedSearchBar = baseSearchBar.searchBarCancelButtonAction(action)
        updatedSearchBar.cancelButtonAction?()
        #expect(actionCalled, "Expected cancelButtonAction to be set and called")
    }
    
    @Test("searchBarStyle with cornerRadius updates correctly")
    @MainActor
    func testSearchBarStyleWithCornerRadius() async throws {
        let cornerRadius: CGFloat = 15
        let updatedSearchBar = baseSearchBar.searchBarStyle(cornerRadius: cornerRadius)
        #expect(updatedSearchBar.style.cornerRadius == cornerRadius, "Expected style.cornerRadius to be updated to \(cornerRadius)")
    }
    
    @Test("searchBarStyle with predefined style updates correctly")
    @MainActor
    func testSearchBarStyleWithPredefinedStyle() async throws {
        let style = SearchBarCornerStyle.capsule
        let updatedSearchBar = baseSearchBar.searchBarStyle(style)
        #expect(updatedSearchBar.style.cornerRadius == style.cornerRadius, "Expected style.cornerRadius to match \(style) cornerRadius")
    }
    
    @Test("searchBarStyle with all parameters updates correctly")
    @MainActor
    func testSearchBarStyleWithAllParameters() async throws {
        let cornerRadius: CGFloat = 10
        let textColor = Color.blue
        let tint = Color.red
        let tokenBackground = Color.green
        let backgroundColor = Color.yellow
        let updatedSearchBar = baseSearchBar.searchBarStyle(cornerRadius: cornerRadius, textColor: textColor, tint: tint, tokenBackground: tokenBackground, backgroundColor: backgroundColor)
        #expect(updatedSearchBar.style.cornerRadius == cornerRadius, "Expected style.cornerRadius to be updated to \(cornerRadius)")
        #expect(updatedSearchBar.style.textColor == textColor, "Expected style.textColor to be updated to \(textColor)")
        #expect(updatedSearchBar.style.tintColor == tint, "Expected style.tintColor to be updated to \(tint)")
        #expect(updatedSearchBar.style.tokenBackground == tokenBackground, "Expected style.tokenBackgroundColor to be updated to \(tokenBackground)")
        #expect(updatedSearchBar.style.backgroundColor == backgroundColor, "Expected style.backgroundColor to be updated to \(backgroundColor)")
    }
    
    @Test("searchBarStyle with predefined style and parameters updates correctly")
    @MainActor
    func testSearchBarStyleWithPredefinedStyleAndParameters() async throws {
        let style = SearchBarCornerStyle.capsule
        let textColor = Color.blue
        let tint = Color.red
        let tokenBackground = Color.green
        let backgroundColor = Color.yellow
        let updatedSearchBar = baseSearchBar.searchBarStyle(style, textColor: textColor, tint: tint, tokenBackground: tokenBackground, backgroundColor: backgroundColor)
        #expect(updatedSearchBar.style.cornerRadius == style.cornerRadius, "Expected style.cornerRadius to match \(style) cornerRadius")
        #expect(updatedSearchBar.style.textColor == textColor, "Expected style.textColor to be updated to \(textColor)")
        #expect(updatedSearchBar.style.tintColor == tint, "Expected style.tintColor to be updated to \(tint)")
        #expect(updatedSearchBar.style.tokenBackground == tokenBackground, "Expected style.tokenBackgroundColor to be updated to \(tokenBackground)")
        #expect(updatedSearchBar.style.backgroundColor == backgroundColor, "Expected style.backgroundColor to be updated to \(backgroundColor)")
    }
    
    @available(iOS 16.0, *)
    @MainActor
    @Test("searchBarCurrentTokens updates correctly")
    func testSearchBarCurrentTokens() async throws {
        var tokens = [SearchBarToken(text: "Test", systemName: "star")]
        let binding = Binding {
            tokens
        } set: { newValue in
            tokens = newValue
        }
        let updatedSearchBar = baseSearchBar.searchBarCurrentTokens(binding)
        #expect(updatedSearchBar.currentTokens.wrappedValue == tokens, "Expected currentTokens to be updated with initial value")
        let newToken = SearchBarToken(text: "New", systemName: "star")
        binding.wrappedValue = [newToken]
        #expect(updatedSearchBar.currentTokens.wrappedValue == [newToken], "Expected currentTokens to reflect binding updates")
    }
    
    @available(iOS 16.0, *)
    @MainActor
    @Test("searchBarSuggestedTokens with Binding updates correctly")
    func testSearchBarSuggestedTokensWithBinding() async throws {
        var tokens = [SearchBarToken(text: "Test", systemName: "star")]
        let binding = Binding {
            tokens
        } set: { newValue in
            tokens = newValue
        }
        let updatedSearchBar = baseSearchBar.searchBarSuggestedTokens(binding)
        #expect(updatedSearchBar.searchTokenSuggestions.wrappedValue == tokens, "Expected searchTokenSuggestions to be updated with initial value")
        let newToken = SearchBarToken(text: "New", systemName: "star")
        binding.wrappedValue = [newToken]
        #expect(updatedSearchBar.searchTokenSuggestions.wrappedValue == [newToken], "Expected searchTokenSuggestions to reflect binding updates")
    }
    
    @available(iOS 16.0, *)
    @MainActor
    @Test("searchBarSuggestedTokens with array updates correctly")
    func testSearchBarSuggestedTokensWithArray() async throws {
        let tokens = [SearchBarToken(text: "Test", systemName: "star")]
        let updatedSearchBar = baseSearchBar.searchBarSuggestedTokens(tokens)
        #expect(updatedSearchBar.searchTokenSuggestions.wrappedValue == tokens, "Expected searchTokenSuggestions to be updated with provided array")
    }
    
    @available(iOS 16.0, *)
    @Test("searchBarSuggestedTokens with suggestions updates correctly")
    @MainActor
    func testSearchBarSuggestedTokensWithSuggestions() async throws {
        let suggestion = SearchBarSuggestion(text: "Test", token: SearchBarToken(text: "Test", systemName: "star"))
        let updatedSearchBar = baseSearchBar.searchBarSuggestedTokens([suggestion])
        #expect(updatedSearchBar.searchTokenSuggestions.wrappedValue == [suggestion.token], "Expected searchTokenSuggestions to be updated with suggestion tokens")
    }
    
    @Test("searchBarReturnKeyType updates correctly")
    @MainActor
    func testSearchBarReturnKeyType() async throws {
        let type = UIReturnKeyType.done
        let updatedSearchBar = baseSearchBar.searchBarReturnKeyType(type)
        #expect(updatedSearchBar.returnKeyType == type, "Expected returnKeyType to be updated to \(type)")
    }
    
    @Test("searchBarKeyboardType updates correctly")
    @MainActor
    func testSearchBarKeyboardType() async throws {
        let type = UIKeyboardType.emailAddress
        let updatedSearchBar = baseSearchBar.searchBarKeyboardType(type)
        #expect(updatedSearchBar.keyboardType == type, "Expected keyboardType to be updated to \(type)")
    }
    
    @Test("searchBarAutoCorrectionType updates correctly")
    @MainActor
    func testSearchBarAutoCorrectionType() async throws {
        let type = UITextAutocorrectionType.no
        let updatedSearchBar = baseSearchBar.searchBarAutoCorrectionType(type)
        #expect(updatedSearchBar.autoCorrectionType == type, "Expected autoCorrectionType to be updated to \(type)")
    }
    
    @Test("searchBarAutoCapitalizationType updates correctly")
    @MainActor
    func testSearchBarAutoCapitalizationType() async throws {
        let type = UITextAutocapitalizationType.allCharacters
        let updatedSearchBar = baseSearchBar.searchBarAutoCapitalizationType(type)
        #expect(updatedSearchBar.autoCapitalizationType == type, "Expected autoCapitalizationType to be updated to \(type)")
    }
    
    @Test("searchBarTextContentType updates correctly")
    @MainActor
    func testSearchBarTextContentType() async throws {
        let type = UITextContentType.emailAddress
        let updatedSearchBar = baseSearchBar.searchBarTextContentType(type)
        #expect(updatedSearchBar.textContentType == type, "Expected textContentType to be updated to \(type)")
    }
    #endif
    
    @available(macOS 12.0, *)
    @Test("searchBarIsFocused updates correctly")
    @MainActor
    func testSearchBarIsFocused() async throws {
        var isFocused = false
        let binding = Binding {
            isFocused
        } set: { newValue in
            isFocused = newValue
        }
        let updatedSearchBar = baseSearchBar.searchBarIsFocused(binding)
        #expect(updatedSearchBar.isUsingCustomFocus, "Expected isUsingCustomFocus to be true")
        #expect(updatedSearchBar.isFocused.wrappedValue == false, "Expected isFocused to match initial binding value")
        binding.wrappedValue = true
        #expect(updatedSearchBar.isFocused.wrappedValue == true, "Expected isFocused to reflect binding updates")
    }
    
    @MainActor
    @Test("searchBarStyle with SearchBarStyle updates correctly")
    func testSearchBarStyleWithStyleObject() async throws {
        let style = SearchBarStyle(cornerRadius: 10, textColor: .green, tint: .red, backgroundColor: .yellow)
        let updatedSearchBar = baseSearchBar.searchBarStyle(style)
        #expect(updatedSearchBar.style.cornerRadius == style.cornerRadius, "Expected style.cornerRadius to be updated to \(style.cornerRadius)")
        #expect(updatedSearchBar.style.textColor == style.textColor, "Expected style.textColor to be updated to \(String(describing: style.textColor))")
        #expect(updatedSearchBar.style.tintColor == style.tintColor, "Expected style.tintColor to be updated to \(String(describing: style.tintColor))")
        #expect(updatedSearchBar.style.backgroundColor == style.backgroundColor, "Expected style.backgroundColor to be updated to \(String(describing: style.backgroundColor))")
    }
    
    @Test("searchBarStyle with cornerRadius updates correctly (macOS)")
    @MainActor
    func testSearchBarStyleWithCornerRadiusMacOS() async throws {
        let cornerRadius: CGFloat = 15
        let updatedSearchBar = baseSearchBar.searchBarStyle(cornerRadius: cornerRadius)
        #expect(updatedSearchBar.style.cornerRadius == cornerRadius, "Expected style.cornerRadius to be updated to \(cornerRadius)")
    }
    
    @Test("searchBarStyle with predefined style updates correctly (macOS)")
    @MainActor
    func testSearchBarStyleWithPredefinedStyleMacOS() async throws {
        let style = SearchBarCornerStyle.capsule
        let updatedSearchBar = baseSearchBar.searchBarStyle(style)
        #expect(updatedSearchBar.style.cornerRadius == style.cornerRadius, "Expected style.cornerRadius to match \(style) cornerRadius")
    }
    
    @available(iOS 16.0, macOS 15.0, *)
    @Test("searchBarSuggestions with Binding updates correctly")
    @MainActor
    func testSearchBarSuggestionsWithBinding() async throws {
        var suggestions = [SearchBarSuggestion(text: "Test", token: SearchBarToken(text: "Test", systemName: "star"))]
        let binding = Binding {
            suggestions
        } set: { newValue in
            suggestions = newValue
        }
        let updatedSearchBar = baseSearchBar.searchBarSuggestions(binding)
        #expect(updatedSearchBar.searchSuggestions.wrappedValue == suggestions, "Expected searchSuggestions to be updated with initial value")
        let newSuggestion = SearchBarSuggestion(text: "Test", token: SearchBarToken(text: "Test", systemName: "star"))
        binding.wrappedValue = [newSuggestion]
        #expect(updatedSearchBar.searchSuggestions.wrappedValue == [newSuggestion], "Expected searchSuggestions to reflect binding updates")
    }
    
    @available(iOS 16.0, macOS 15.0, *)
    @Test("searchBarSuggestions with array updates correctly")
    @MainActor
    func testSearchBarSuggestionsWithArray() async throws {
        let suggestions = [SearchBarSuggestion(text: "Test", token: SearchBarToken(text: "Test", systemName: "star"))]
        let updatedSearchBar = baseSearchBar.searchBarSuggestions(suggestions)
        #expect(updatedSearchBar.searchSuggestions.wrappedValue == suggestions, "Expected searchSuggestions to be updated with provided array")
    }
    
    @MainActor
    @available(iOS 16.0, macOS 15.0, *)
    @Test("searchBarEnableAutomaticSuggestionsFiltering updates correctly")
    func testSearchBarEnableAutomaticSuggestionsFiltering() async throws {
        var filteringActionCalled = false
        let filteringAction: (String, SearchBarSuggestion) -> Bool = { _, _ in
            filteringActionCalled = true
            return true
        }
        let updatedSearchBar = baseSearchBar.searchBarEnableAutomaticSuggestionsFiltering(true, filteringAction: filteringAction)
        #expect(updatedSearchBar.enabledAutomaticFiltering, "Expected enabledAutomaticFiltering to be true")
        let _ = updatedSearchBar.filteringAction?("test", SearchBarSuggestion(text: "Test", token: SearchBarToken(text: "Test", systemName: "star")))
        #expect(filteringActionCalled, "Expected filteringAction to be set and called")
    }
    
    @MainActor
    @Test("searchBarClearButtonDisplayMode updates correctly")
    func testSearchBarClearButtonDisplayMode() async throws {
        let mode = SearchBarClearButtonDisplayMode.always
        let updatedSearchBar = baseSearchBar.searchBarClearButtonDisplayMode(mode)
        #expect(updatedSearchBar.clearButtonDisplayMode == mode, "Expected clearButtonDisplayMode to be updated to \(mode)")
    }
    
    @Test("searchBarClearButtonAction updates correctly")
    @MainActor
    func testSearchBarClearButtonAction() async throws {
        var testValue = false
        let action: () -> Void = { testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarClearButtonAction(action)
        updatedSearchBar.clearButtonAction?()
        #expect(testValue, "Expected clearButtonAction to be set and called")
    }
    
    @Test("searchBarChangeAction updates correctly")
    @MainActor
    func testSearchBarChangeAction() async throws {
        var testValue = false
        let action: (String) -> Void = { _ in testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarChangeAction(action)
        updatedSearchBar.searchChangeAction?("test")
        #expect(testValue, "Expected searchChangeAction to be set and called")
    }
    
    @Test("searchBarIconView with view updates correctly")
    @MainActor
    func testSearchBarIconViewWithView() async throws {
        let updatedSearchBar = baseSearchBar.searchBarIconView { Image(systemName: "magnifyingglass") }
        #expect(updatedSearchBar.iconView != nil, "Expected iconView to be set with a non-nil value")
        // Note: Exact view comparison is challenging; we only check for non-nil since AnyView wraps the content
    }
    
    @Test("searchBarIconView default updates correctly")
    @MainActor
    func testSearchBarIconViewDefault() async throws {
        let updatedSearchBar = baseSearchBar.searchBarIconView()
        #expect(updatedSearchBar.iconView != nil, "Expected iconView to be set with a default value")
    }
    
    @available(iOS 14.0, macOS 12.0, *)
    @Test("searchBarBeginEditingAction updates correctly")
    @MainActor
    func testSearchBarBeginEditingAction() async throws {
        var testValue = false
        let action: () -> Void = { testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarBeginEditingAction(action)
        updatedSearchBar.searchBeginEditingAction?()
        #expect(testValue, "Expected searchBeginEditingAction to be set and called")
    }
    
    @available(iOS 14.0, macOS 12.0, *)
    @Test("searchBarEndEditingAction updates correctly")
    @MainActor
    func testSearchBarEndEditingAction() async throws {
        var testValue = false
        let action: () -> Void = { testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarEndEditingAction(action)
        updatedSearchBar.searchEndEditingAction?()
        #expect(testValue, "Expected searchEndEditingAction to be set and called")
    }
}
