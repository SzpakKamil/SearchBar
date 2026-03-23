# Modifiers

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Structure")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarModifiers")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Customize `SearchBar` in SwiftUI.

## Overview

`SearchBar` provides modifiers for appearance, behavior, and interaction using standard SwiftUI syntax. Accessibility features like VoiceOver and Dynamic Type are supported.

> Important: Check individual modifiers for platform compatibility.

## Modifiers

### Appearance Modifiers
- ``SearchBar/SearchBar/searchBarStyle(_:)``: Applies a custom `SearchBarStyle`.
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``: Configures style with token background.
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:tokenBackground:backgroundColor:)``: Applies corner style with token background.
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:backgroundColor:)``: Configures style parameters.
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)``: Applies corner style.
- ``SearchBar/SearchBar/searchBarIconView(_:)``: Sets a custom icon view.
- ``SearchBar/SearchBar/searchBarIconView()``: Removes the custom icon.
- ``SearchBar/SearchBar/searchBarMaterial(_:)``: Applies material style (`solid`, `glass`). Supported on iOS 26.0+, iPadOS 26.0+, macOS 26.0+.
- ``SearchBar/SearchBar/searchBarScale(_:)``: Adjusts padding and scale. Supported on iOS 14.0+, iPadOS 14.0+, macOS 11.0+, visionOS 1.0+.

### Input Configuration Modifiers (iOS, iPadOS, and visionOS only)
- ``SearchBar/SearchBar/searchBarLookToDictateEnabled(_:)``: Controls "Look to Dictate" (iOS 17.0+, visionOS).
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``: Sets keyboard type.
- ``SearchBar/SearchBar/searchBarReturnKeyType(_:)``: Sets return key type.
- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``: Controls autocorrection.
- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``: Sets autocapitalization behavior.
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``: Sets content type for autofill.

### Event Handling Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``: Action for clear button.
- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``: Action when editing begins.
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``: Action when editing ends.
- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``: Action for cancel button.
- ``SearchBar/SearchBar/searchBarChangeAction(_:)``: Action when text changes.

### Button Display Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``: Configures clear button visibility.
- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``: Configures cancel button visibility.

### Tokens and Suggestions Modifiers
- ``SearchBar/SearchBar/searchBarCurrentTokens(_:)``: Manages dynamic tokens.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``: Binds suggested tokens.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``: Sets static suggested tokens.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-54f3``: Converts suggestions to tokens.
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``: Binds suggestions.
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``: Sets static suggestions.
- ``SearchBar/SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``: Enables automatic filtering.

### Focus Modifiers
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``: Binds focus state.

## Example

Example combining modifiers:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var isFocused = false
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded, textColor: .blue)
            .searchBarScale(.medium)
            .searchBarIconView { Image(systemName: "magnifyingglass") }
            .searchBarClearButtonAction { searchText = "" }
            .searchBarIsFocused($isFocused)
            #if os(iOS) || os(visionOS)
            .searchBarMaterial(.glass)
            .searchBarCancelButtonAction { isFocused = false }
            .searchBarKeyboardType(.webSearch)
            #endif
    }
}
```

## Next Steps

- See the setup guide in <doc:SetUp>.
