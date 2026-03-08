# `SearchBar`
![Swift Version](https://img.shields.io/badge/Swift-5.9+-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2011.0+%20|%20watchOS%2010.0+%20|%20tvOS%2015.0+%20|%20visionOS%201.0+-15437D.svg)
![License](https://img.shields.io/badge/License-MIT-C8ECFE.svg)

![Banner](./Resources/SearchBar-Banner.png#gh-light-mode-only)
![Banner](./Resources/SearchBar-BannerDark.png#gh-dark-mode-only)

**SearchBar** is a SwiftUI package that provides a highly customizable, native search bar component for iOS, iPadOS, macOS, tvOS, watchOS, and visionOS. It leverages `UISearchBar` for iOS, iPadOS, and visionOS, and a SwiftUI-reimplemented `NSSearchField` for macOS, as well as a SwiftUI-reimplemented text field for tvOS and watchOS, ensuring a seamless, platform-specific experience. With advanced customization options, accessibility features, and support for search tokens and suggestions, `SearchBar` is ideal for creating modern, user-focused search interfaces.

For more information, visit the [SearchBar Project Site](https://kamilszpak.com/searchbar) or the [Detailed Documentation](https://documentation.kamilszpak.com/documentation/searchbar).

## Table of Contents

- [Features](#features)
- [Resources](#resources)
- [Usage](#usage)
  - [Basic Usage](#basic-usage)
  - [Advanced Customization](#advanced-customization)
- [Modifiers](#modifiers)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Features

- **Native Integration**: Uses `UISearchBar` for iOS, iPadOS, and visionOS, and an implementation of SwiftUI `TextField` tailored for a native search bar experience on macOS, tvOS, and watchOS, ensuring authentic platform behavior.
- **Extensive Customization**: Modify appearance with styles, colors, icons, and materials via SwiftUI modifiers.
- **Dynamic Search**: Real-time text updates with `Binding<String>` and event handling for user interactions.
- **Tokens and Suggestions**: Supports search tokens (iOS 16.0+, visionOS 1.0+) and suggestions (iOS 16.0+, visionOS 1.0+, macOS 15.0+).
- **Accessibility**: Built-in support for VoiceOver and Dynamic Type ensures inclusivity.
- **Platform Consistency**: Unified SwiftUI API with tailored behaviors (e.g., capsule styling on visionOS).
- **Flexible Placement**: Embed in navigation bars, toolbars, or custom layouts without UIKit/AppKit dependencies.
- **Built-in Unit Tests**: Includes unit tests to ensure reliability and stability across all supported platforms.
- **Full Localization**: Translated into every language available on iOS, iPadOS, macOS, and visionOS, ensuring seamless integration with system language settings for prompts, buttons, and other UI elements.

## Resources
Explore additional SearchBar resources to deepen your understanding:

- **Documentation**: Dive into detailed SearchBar documentation.
  - [Modifiers](https://documentation.kamilszpak.com/documentation/searchbar/modifiers)
  - [Token Model](https://documentation.kamilszpak.com/documentation/searchbar/searchbartoken)
  - [Suggestion Model](https://documentation.kamilszpak.com/documentation/searchbar/searchbarsuggestion)

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
                #if os(iOS) || os(macOS) || os(visionOS)
                .searchBarMaterial(.glass) // Apply glass material on iOS 26.0+, macOS 26.0+, visionOS 26.0+
                #endif
            Text("Searching: \(searchText)")
        }
        .padding()
    }
}
```

## Modifiers

The `SearchBar` package offers a variety of modifiers to customize its appearance, behavior, and interaction. Below are examples from each category. For a complete list, refer to the [Detailed Documentation](https://documentation.kamilszpak.com/documentation/searchbar/modifiers).

### Appearance Modifiers

- **`searchBarStyle(_:)`**: Applies a custom `SearchBarStyle` configuration (e.g., `.rounded`).  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarIconView(_:)`**: Sets a custom icon view for the search bar.  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarMaterial(_:)`**: Applies a material effect (`.solid` or `.glass`) for a modern, translucent background. Fully supported on iOS 26.0+, macOS 26.0+, and visionOS 26.0+ (Experimental Liquid Glass).  
  *Available on iOS (26.0+), macOS (26.0+), and visionOS (26.0+).*
- **`searchBarScale(_:)`**: Fine-tune internal spacing with predefined scales (`.small`, `.medium`, `.large`).  
  *Available on all platforms.*

### Input Configuration Modifiers (iOS, iPadOS, and visionOS only)

- **`searchBarKeyboardType(_:)`**: Sets the keyboard type (e.g., `.emailAddress`).
- **`searchBarReturnKeyType(_:)`**: Customizes the return key (e.g., `.search`, `.go`).
- **`searchBarAutoCorrectionType(_:)`**: Enables or disables autocorrection for a cleaner user experience.
- **`searchBarLookToDictateEnabled(_:)`**: Integrates "Look to Dictate" for eye-tracking interactions (iOS 17.0+).
- **`searchBarTextContentType(_:)`**: Specifies the content type for autofill and keyboard suggestions.

### Event Handling Modifiers

- **`searchBarChangeAction(_:)`**: React in real-time to text changes.  
  *Available on all platforms.*
- **`searchBarBeginEditingAction(_:)`** & **`searchBarEndEditingAction(_:)`**: Trigger logic precisely when the user starts or finishes searching.  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarClearButtonAction(_:)`**: Define custom logic when the search is cleared.  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarCancelButtonAction(_:)`**: Defines an action for the cancel button.  
  *Available on iOS and visionOS.*

### Button Display Modifiers

- **`searchBarClearButtonDisplayMode(_:)`**: Configures when the clear button is shown (e.g., `.whileEditing`).  
  *Available on iOS, visionOS, and macOS.*
- **`searchBarCancelButtonDisplayMode(_:)`**: Configures when the cancel button is shown (e.g., `.always`).  
  *Available on iOS and visionOS.*

### Tokens and Suggestions Modifiers

- **`searchBarCurrentTokens(_:)`**: Manages a dynamic list of current tokens for semantic searching.  
  *Available on iOS (16.0+), iPadOS (14.0+), and visionOS (1.0+).*
- **`searchBarSuggestions(_:)`**: Provide contextual search suggestions to speed up user input.  
  *Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).*
- **`searchBarEnableAutomaticSuggestionsFiltering(_:)`**: Let the system handle suggestion filtering automatically.  
  *Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).*

### Focus Modifiers

- **`searchBarIsFocused(_:)`**: Programmatically manage search bar focus with a simple binding.  
  *Available on iOS (14.0+), visionOS (1.0+), and macOS (12.0+).*

## Installation

### Swift Package Manager

Add `SearchBar` to your project via Swift Package Manager. The minimum version required is **2.1.5**.

#### In `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/SearchBar.git", from: "2.1.5")
]
```

#### In Xcode:

1. Go to **File > Swift Packages > Add Package Dependency**.
2. Enter the URL: `https://github.com/SzpakKamil/SearchBar.git`.
3. Select version **2.1.5** or later.

### Agent Skill
You can install the SearchBar skill for your CLI agent to get expert guidance on SearchBar directly in your terminal.

#### Using skills.sh:
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill SearchBar
```

#### Using ClawdHub:
```bash
npx dlx clawdhub@latest install searchbar
```

## Requirements

- **iOS**: 14.0+
- **iPadOS**: 14.0+
- **macOS**: 11.0+
- **tvOS**: 15.0+
- **watchOS**: 10.0+
- **visionOS**: 1.0+
- **Swift**: 5.9+
- **Xcode**: 15.0+

## License

`SearchBar` is released under the MIT license.
