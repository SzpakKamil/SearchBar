# About SearchBar

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarGreeting")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Use the `SearchBar` package to add customizable search functionality to SwiftUI apps.

## Overview

`SearchBar` extends SwiftUI’s default search bar with flexible customization and robust functionality. It supports iOS, iPadOS, visionOS, and macOS by integrating native components (`UISearchBar` on iOS/visionOS, `NSSearchField` behavior on macOS) into a unified SwiftUI API. The package includes full localization for all supported system languages. Prompts, placeholders, and system text like cancel buttons adapt automatically to user settings.

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iOS", alt: "SearchBar") {
            Rounded
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iPadOS", alt: "SearchBar") {
            Rounded
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-macOSTahoe", alt: "SearchBar") {
            Rounded
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-visionOS", alt: "SearchBar") {
            Rounded
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-tvOS", alt: "SearchBar") {
            Rounded
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-watchOS", alt: "SearchBar") {
            Rounded
        }
    }
}

## Why Use SearchBar?

`SearchBar` improves on Apple’s default components:

- **Documentation**: Comprehensive Swift DocC API references.
- **Testing**: Unit and UI tests ensure cross-platform stability.
- **Placement**: Embed in navigation bars, toolbars, or custom views without UIKit or AppKit.
- **Styling**: Modifiers for colors, borders, and corner styles.
- **Advanced Styling**: Customize token backgrounds, text colors, and icon views.
- **Input**: Configurable keyboards, return keys, and content types.
- **Features**: Search tokens (iOS 16.0+, visionOS 1.0+) and suggestions (iOS 16.0+, visionOS 1.0+, macOS 15.0+).
- **Accessibility**: Full VoiceOver and Dynamic Type support.
- **Consistency**: Unified API with native platform behaviors.
- **Localization**: Translations for all supported system languages.

## Customization Modifiers

`SearchBar` uses standard SwiftUI modifiers for configuration.

- **Appearance**:
  - `.searchBarStyle(_:)`: Configures corner radius, text color, tint, token background (iOS/visionOS), and background color.
  - `.searchBarIconView(_:)`: Sets a custom icon view.

- **Input Configuration** (iOS/visionOS):
  - `.searchBarKeyboardType(_:)`: Configures keyboard (e.g., `.emailAddress`, `.URL`).
  - `.searchBarTextContentType(_:)`: Sets content type (e.g., `.emailAddress`) for autofill.

- **Event Handling**:
  - `.searchBarClearButtonAction(_:)`: Action for clear button click.
  - `.searchBarCancelButtonAction(_:)`: Action for cancel button click (iOS/visionOS).

- **Button Display**:
  - `.searchBarClearButtonDisplayMode(_:)`: Configures clear button visibility.
  - `.searchBarCancelButtonDisplayMode(_:)`: Configures cancel button visibility (iOS/visionOS).

- **Tokens and Suggestions**:
  - `.searchBarCurrentTokens(_:)`: Configures tokens for filtering (iOS 16.0+, visionOS 1.0+).
  - `.searchBarSuggestions(_:)`: Sets suggestions (iOS 16.0+, visionOS 1.0+, macOS 15.0+).

- **Focus**:
  - `.searchBarIsFocused(_:)`: Binds focus state to a Boolean.

For a complete list, see <doc:Modifiers>.

Example:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []
    @State private var isFocused = false

    var body: some View {
        SearchBar(text: $searchText, prompt: "Search")
            .searchBarStyle(.rounded, textColor: .blue, backgroundColor: .gray.opacity(0.1))
            .searchBarClearButtonAction { print("Cleared search") }
            .searchBarCurrentTokens($tokens)
            .searchBarSuggestions(.constant([
                SearchBarSuggestion(text: "Sweet", systemName: "star.fill"),
                SearchBarSuggestion(text: "Sour", systemName: "exclamationmark.triangle.fill")
            ]))
            .searchBarIconView { Image(systemName: "magnifyingglass") }
            #if os(iOS) || os(visionOS)
            .searchBarCancelButtonDisplayMode(.always)
            .searchBarCancelButtonAction {
                searchText = ""
                tokens = []
                isFocused = false
            }
            .searchBarKeyboardType(.emailAddress)
            #endif
            .searchBarIsFocused($isFocused)
    }
}
```

## Use Cases

- **Custom Placement**: Embed in toolbars or custom views.
- **Branding**: Match app design with custom colors and styles.
- **Input Control**: Configure specific keyboard types.
- **Cross-Platform**: Consistent search across iOS, iPadOS, visionOS, and macOS.
- **Global Support**: Native experience in all supported system languages.

## Next Steps

- Integrate the package in <doc:SetUp>.
- Explore modifier details in <doc:Modifiers>.
- Build a sample app with <doc:FruitsList>.
