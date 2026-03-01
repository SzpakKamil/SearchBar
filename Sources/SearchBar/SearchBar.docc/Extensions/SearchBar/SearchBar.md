# ``SearchBar/SearchBar``

A SwiftUI view that provides a customizable search bar for text input and suggestions.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
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

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iOS", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iPadOS", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-macOSTahoe", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-visionOS", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-tvOS", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-watchOS", alt: "Capsule SearchBar") {
            Capsule SearchBar
        }
    }
}

## Topics

### Initializers
- ``SearchBar/init(text:prompt:)``

### Appearance Modifiers
- ``SearchBar/searchBarStyle(_:)``
- ``SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/searchBarStyle(_:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBar/searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBar/searchBarIconView(_:)``
- ``SearchBar/searchBarIconView()``
- ``SearchBar/searchBarMaterial(_:)``
- ``SearchBar/searchBarScale(_:)``

### Input Configuration Modifiers (iOS and visionOS only)
- ``SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/searchBarReturnKeyType(_:)``
- ``SearchBar/searchBarAutoCorrectionType(_:)``
- ``SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/searchBarTextContentType(_:)``

### Event Handling Modifiers
- ``SearchBar/searchBarClearButtonAction(_:)``
- ``SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/searchBarEndEditingAction(_:)``
- ``SearchBar/searchBarCancelButtonAction(_:)``
- ``SearchBar/searchBarChangeAction(_:)``

### Button Display Modifiers
- ``SearchBar/searchBarClearButtonDisplayMode(_:)``
- ``SearchBar/searchBarCancelButtonDisplayMode(_:)``

### Tokens and Suggestions Modifiers
- ``SearchBar/searchBarCurrentTokens(_:)``
- ``SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
- ``SearchBar/searchBarSuggestedTokens(_:)-5wxi``
- ``SearchBar/searchBarSuggestedTokens(_:)-54f3``
- ``SearchBar/searchBarSuggestions(_:)-syi0``
- ``SearchBar/searchBarSuggestions(_:)-620nd``
- ``SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``

### Focus Modifiers
- ``SearchBar/searchBarIsFocused(_:)``

## See Also

- ``SearchBarStyle``
- ``SearchBarToken``
- ``SearchBarSuggestion``
