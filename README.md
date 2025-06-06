# `SearchBar`

![Banner](./Resources/SearchBar-Banner.png)

**SearchBar** is a SwiftUI package that provides a highly customizable, native search bar component for iOS, iPadOS, macOS, and visionOS. It leverages `UISearchBar` for iOS, iPadOS, and visionOS, and a SwiftUI-reimplemented `NSSearchField` for macOS, ensuring a seamless, platform-specific experience. With advanced customization options, accessibility features, and support for search tokens and suggestions, `SearchBar` is ideal for creating modern, user-focused search interfaces.

For detailed documentation, visit the [SearchBar Documentation](https://kamilszpak.com/documentation/searchbar).

## Table of Contents

- [Features](#features)
- [Usage](#usage)
  - [Basic Usage](#basic-usage)
  - [Advanced Customization](#advanced-customization)
- [Modifiers](#modifiers)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Features

- **Native Integration**: Uses `UISearchBar` (iOS, iPadOS, visionOS) and a SwiftUI-based `NSSearchField` (macOS) for authentic platform behavior.
- **Extensive Customization**: Modify appearance with styles, colors, icons, and more via SwiftUI modifiers.
- **Dynamic Search**: Real-time text updates with `Binding<String>` and event handling for user interactions.
- **Tokens and Suggestions**: Supports search tokens (iOS 16.0+, visionOS 1.0+) and suggestions (iOS 16.0+, visionOS 1.0+, macOS 15.0+).
- **Accessibility**: Built-in support for VoiceOver and Dynamic Type ensures inclusivity.
- **Platform Consistency**: Unified SwiftUI API with tailored behaviors (e.g., capsule styling on visionOS).
- **Flexible Placement**: Embed in navigation bars, toolbars, or custom layouts without UIKit/AppKit dependencies.

## Usage

The `SearchBar` component is a SwiftUI `View` that adapts to each platform, offering a simple yet powerful API for integration and customization.

### Basic Usage

A minimal setup for a functional search bar across platforms:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            SearchBar(text: $searchText, prompt: "Search")
            Text("You typed: \(searchText)")
        }
        .padding()
    }
}
```

### Advanced Customization

Enhance the search bar with styling, tokens, and platform-specific features:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []

    var body: some View {
        VStack {
            SearchBar(text: $searchText, prompt: "Filter Items")
                .searchBarStyle(.rounded, textColor: .blue, backgroundColor: .gray.opacity(0.1))
                .searchBarIconView { Image(systemName: "magnifyingglass") }
                .searchBarCurrentTokens($tokens)
                .searchBarSuggestions(.constant([
                    SearchBarSuggestion(text: "Apple", systemName: "apple.logo"),
                    SearchBarSuggestion(text: "Orange", systemName: "citrus")
                ]))
                #if os(iOS) || os(visionOS)
                .searchBarCancelButtonDisplayMode(.always)
                .searchBarKeyboardType(.default)
                #endif
            Text("Searching: \(searchText)")
        }
        .padding()
    }
}
```

## Modifiers

The `SearchBar` package offers a variety of modifiers to customize its appearance, behavior, and interaction. Below are examples from each category. For a complete list, refer to the [SearchBar Documentation](https://kamilszpak.com/documentation/searchbar/modifiers).

### Appearance Modifiers

- **`searchBarStyle(_:)`**: Applies a custom `SearchBarStyle` configuration (e.g., `.rounded`).  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarIconView(_:)`**: Sets a custom icon view for the search bar.  
  *Available on iOS, visionOS, and macOS.*

### Input Configuration Modifiers (iOS and visionOS only)

- **`searchBarKeyboardType(_:)`**: Sets the keyboard type (e.g., `.emailAddress`).
- **`searchBarTextContentType(_:)`**: Specifies the content type for autofill and keyboard suggestions.

### Event Handling Modifiers

- **`searchBarClearButtonAction(_:)`**: Defines an action for the clear button.  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarCancelButtonAction(_:)`**: Defines an action for the cancel button.  
  *Available on iOS and visionOS.*

### Button Display Modifiers

- **`searchBarClearButtonDisplayMode(_:)`**: Configures when the clear button is shown (e.g., `.whileEditing`).  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarCancelButtonDisplayMode(_:)`**: Configures when the cancel button is shown (e.g., `.always`).  
  *Available on iOS and visionOS.*

### Tokens and Suggestions Modifiers

- **`searchBarCurrentTokens(_:)`**: Manages a dynamic list of current tokens.  
  *Available on iOS (16.0+) and visionOS (1.0+).*
- **`searchBarSuggestions(_:)`**: Sets a list of suggestions.  
  *Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).*

### Focus Modifiers

- **`searchBarIsFocused(_:)`**: Binds the focus state to a Boolean.  
  *Available on iOS (14.0+), visionOS (1.0+), and macOS (12.0+).*

## Installation

### Swift Package Manager

Add `SearchBar` to your project via Swift Package Manager. The minimum version required is **2.0.0**.

#### In `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/SearchBar.git", from: "2.0.0")
]
```

#### In Xcode:

1. Go to **File > Swift Packages > Add Package Dependency**.
2. Enter the URL: `https://github.com/SzpakKamil/SearchBar.git`.
3. Select version **2.0.0** or later.

## Requirements

- **iOS**: 14.0+
- **iPadOS**: 14.0+
- **macOS**: 11.0+
- **visionOS**: 1.0+
- **Swift**: 5.9+
- **Xcode**: 14.0+

## License

`SearchBar` is released under the MIT license.
