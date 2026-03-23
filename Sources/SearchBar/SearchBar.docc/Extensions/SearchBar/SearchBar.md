# ``SearchBar/SearchBar``

Customizable search bar view.

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

`SearchBar` facilitates search functionality with text input, styling, events, and suggestions. It wraps `UISearchBar` on iOS/visionOS and uses native SwiftUI views on macOS.

- **Styling**: Customize appearance with `SearchBarStyle`.
- **Tokens/Suggestions**: Support on iOS/visionOS (iOS 16.0+).
- **Events**: Handle editing, clearing, and text changes.
- **Platform Specifics**: Keyboard settings (iOS) and focus control (macOS).

> Note: Some features, such as tokens and certain keyboard modifiers, are exclusive to iOS and visionOS due to platform-specific UI differences.

## Example

Example usage:

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
- ``SearchBar/SearchBar/init(text:prompt:)``

### Appearance Modifiers
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarIconView(_:)``
- ``SearchBar/SearchBar/searchBarIconView()``
- ``SearchBar/SearchBar/searchBarMaterial(_:)``
- ``SearchBar/SearchBar/searchBarScale(_:)``

### Input Configuration Modifiers (iOS and visionOS only)
- ``SearchBar/SearchBar/searchBarLookToDictateEnabled(_:)``
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
