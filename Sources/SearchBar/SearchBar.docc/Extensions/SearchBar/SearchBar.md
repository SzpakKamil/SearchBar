# ``SearchBar/SearchBar``

A SwiftUI view that provides a customizable search bar for text input and suggestions.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `SearchBar` is a versatile SwiftUI component designed to facilitate search functionality within your app. It supports text input, custom styling, event handling, and suggestion filtering, with platform-specific implementations for macOS and iOS/visionOS. On iOS and visionOS, `SearchBar` leverages `UIViewRepresentable` to wrap a `UISearchBar`, while on macOS, it uses native SwiftUI views like `TextField`.

Key features include:
- Customizable appearance via `SearchBarStyle` (e.g., corner radius, colors).
- Support for tokens and suggestions on iOS/visionOS (iOS 16.0+).
- Event handling for editing, clearing, and text changes.
- Platform-specific modifiers for keyboard settings (iOS/visionOS) and focus control (macOS 12.0+).

> Note: Some features, such as tokens and certain keyboard modifiers, are exclusive to iOS and visionOS due to platform-specific UI differences.

## Example

Here’s an example of using `SearchBar` with custom styling and event handling on multiple platforms:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var isFocused = false
    
    var body: some View {
        SearchBar(text: $searchText, prompt: "Search items")
            .searchBarStyle(.capsule, textColor: .blue, tint: .purple, backgroundColor: .gray)
            .searchBarIconView { Image(systemName: "magnifyingglass") }
            .searchBarClearButtonAction { searchText = "" }
            .searchBarChangeAction { newText in
                print("Search text changed to: \(newText)")
            }
            .searchBarIsFocused($isFocused)
            #if os(iOS) || os(visionOS)
            .searchBarCancelButtonAction { isFocused = false }
            .searchBarKeyboardType(.webSearch)
            #endif
    }
}
```

This example creates a `SearchBar` with a capsule style, a custom icon, and event handling for clearing and text changes. It also includes platform-specific modifiers for iOS/visionOS.

## Topics

### Initializers
- ``SearchBar/SearchBar/init(text:prompt:)``

### Appearance Modifiers
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarIconView(_:)``
- ``SearchBar/SearchBar/searchBarIconView()``

### Input Configuration Modifiers (iOS and visionOS only)
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/SearchBar/searchBarReturnKeyType(_:)``
- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``
- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``

### Event Handling Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarChangeAction(_:)``

### Button Display Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``

### Tokens and Suggestions Modifiers
- ``SearchBar/SearchBar/searchBarCurrentTokens(_:)``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-54f3``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``
- ``SearchBar/SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``

### Focus Modifiers
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``

## See Also

- ``SearchBarStyle``
- ``SearchBarToken``
- ``SearchBarSuggestion``
