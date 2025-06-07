# About Search Bar

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarGreeting")
}

@Options{
    @AutomaticSeeAlso(disabled)
}

Learn about the customizable SwiftUI `SearchBar` package for enhanced search functionality.

## Overview

The `SearchBar` package extends SwiftUI’s default search bar, offering flexible customization and robust functionality. Supporting iOS, iPadOS, visionOS, and macOS, it integrates native components (`UISearchBar` for iOS/visionOS, and on macOS, it recreates `NSSearchField` from AppKit using SwiftUI components) into a SwiftUI API for seamless, platform-specific solutions.

## Why Use SearchBar?

The `SearchBar` package improves upon Apple’s default search bars with:

- **Detailed Documentation**: Swift DocC with tutorials and API references for easy adoption.
- **Reliable Testing**: Unit and UI tests ensure stability across platforms.
- **Flexible Placement**: Embed in navigation bars, toolbars, or custom views without UIKit/AppKit.
- **Custom Styling**: Modifiers for colors, borders, and corner styles to align with app design.
- **Shape and Color Styling**: Style with shape colors like token background, text color, background color, and even a custom SwiftUI view for the search icon.
- **Tailored Input**: Configurable keyboards, return keys, and content types for optimized input.
- **Advanced Features**: Search tokens (iOS 16.0+, visionOS 1.0+) and suggestions (iOS 16.0+, visionOS 1.0+, macOS 15.0+).
- **Accessibility**: Supports VoiceOver and Dynamic Type for inclusive experiences.
- **Platform Consistency**: Unified SwiftUI API with native behaviors (e.g., capsule styling on visionOS).

These features enable developers to create accessible, customized search bars efficiently.

## Customization Modifiers

The `SearchBar` package offers modifiers for tailoring appearance, input, and behavior using SwiftUI’s dot syntax. Here are some key examples:

- **Appearance**:
  - `.searchBarStyle(_:)`: Configures corner radius, text color, tint, token background (iOS/visionOS), and background color.
  - `.searchBarIconView(_:)`: Sets a custom icon view for the search bar.

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

## Target Use Cases

The `SearchBar` package is ideal for:
- **Custom Placement**: Embedding in toolbars or custom views.
- **Branded Apps**: Matching app design with custom colors and styles.
- **Specialized Inputs**: Apps requiring specific keyboard configurations.
- **Cross-Platform Apps**: Consistent search across iOS, iPadOS, visionOS, and macOS.

## Next Steps

- Learn to integrate the package in <doc:SetUp>.
- Explore modifier details in <doc:Modifiers>.
- Learn framework with <doc:SearchBarTutorial> tutorial.
- Build a sample app with <doc:FruitsList>.
