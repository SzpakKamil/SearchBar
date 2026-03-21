# SearchBar
![Swift Version](https://img.shields.io/badge/Swift-5.9%2B-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2011.0+%20|%20watchOS%2010.0+%20|%20tvOS%2015.0+%20|%20visionOS%201.0+-15437D.svg)
![License](https://img.shields.io/badge/License-MIT-C8ECFE.svg)

![Banner](./Resources/SearchBar-Banner.png#gh-light-mode-only)
![Banner](./Resources/SearchBar-BannerDark.png#gh-dark-mode-only)

Flexible, customizable search for SwiftUI. `SearchBar` replaces standard `.searchable` modifiers with full layout control across all Apple platforms.

Visit the [Site](https://kamilszpak.com/searchbar) or [Documentation](https://documentation.kamilszpak.com/documentation/searchbar).

---

## Table of Contents

- [Features](#features)
- [Customization](#customization)
- [Usage](#usage)
- [API Highlights](#api-highlights)
- [Resources](#resources)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Features

* **Cross-Platform API**: Unified API for iOS, iPadOS, macOS, tvOS, watchOS, and visionOS.
* **Native Backend**: Uses `UISearchBar` where available, custom SwiftUI elsewhere.
* **Token Support**: Support search tokens for filters or scopes.
* **Suggestions**: Display and filter search suggestions.
* **Localization & Accessibility**: Localized for all Apple languages. Supports VoiceOver and Dynamic Type.

## Customization

Integrate `SearchBar` seamlessly.

* **Style & Appearance**: Customize shape, background material, color, and corner radius.
* **Layout Integration**: Place the search bar anywhere in the view hierarchy.
* **Custom Icons & Views**: Replace the default search icon with any `View`.
* **Smart Input**: Suggest content types (addresses, emails). Integrate platform features like visionOS 'Look to Dictate'.

## Usage

Components and modifiers are prefixed with `SearchBar` (e.g., `.searchBarStyle`).

### Basic
Minimal setup for a functional search bar.

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

### Advanced
Advanced configuration with custom styling, tokens, and suggestions.

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []
    private let suggestions = [
        SearchBarSuggestion(text: "Apple", systemName: "apple.logo"),
        SearchBarSuggestion(text: "Orange", systemName: "citrus")
    ]

    var body: some View {
        VStack {
            SearchBar(text: $searchText, prompt: "Filter Items")
                .searchBarStyle(.rounded, textColor: .blue, backgroundColor: .gray.opacity(0.1))
                .searchBarIconView { Image(systemName: "magnifyingglass") }
                .searchBarCurrentTokens($tokens)
                .searchBarSuggestions(.constant(suggestions))
                #if os(iOS) || os(visionOS)
                .searchBarCancelButtonDisplayMode(.always)
                #endif
                #if os(iOS) || os(macOS) || os(visionOS)
                .searchBarMaterial(.glass)
                #endif
            Text("Searching: \(searchText)")
        }
        .padding()
    }
}
```

## API Highlights
Key modifiers. See [documentation](https://documentation.kamilszpak.com/documentation/searchbar/modifiers) for the complete list.

### Appearance
- `searchBarStyle(_:)`: Set shape (e.g., `.rounded` or `.capsule`).
- `searchBarIconView(_:)`: Provide a custom view for the search icon.
- `searchBarMaterial(_:)`: Apply a background material like `.glass`.

### Input & Interaction
- `searchBarKeyboardType(_:)`, `searchBarReturnKeyType(_:)`, `searchBarAutoCorrectionType(_:)`.
- `searchBarLookToDictateEnabled(_:)`: Enable eye-tracking input on visionOS.
- `searchBarTextContentType(_:)`: Configure for autofill and specific data types.

### State & Events
- `searchBarIsFocused(_:)`: Bind focus state to a boolean variable.
- `searchBarChangeAction(_:)`: Execute closure when search text changes.
- `searchBarBeginEditingAction(_:)` / `searchBarEndEditingAction(_:)`: Closures for focus events.

## Resources
- **Documentation**: [API Reference](https://documentation.kamilszpak.com/documentation/searchbar).
- **GitHub**: [SzpakKamil/SearchBar](https://github.com/SzpakKamil/SearchBar) - Track issues and contributions.
- **Swift Package Index**: [SearchBar](https://swiftpackageindex.com/SzpakKamil/SearchBar) - View compatibility and release history.

## Installation

### Swift Package Manager
Add `SearchBar` via SPM. Minimum version is `2.1.5`.

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/SearchBar.git", from: "2.1.5")
]
```

### Agent Skill
Install the Agent Skill for AI-assisted workflows.
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill SearchBar
```

## Requirements
- **Platforms**: iOS 14.0+, macOS 11.0+, tvOS 15.0+, watchOS 10.0+, visionOS 1.0+
- **Tools**: Swift 5.9+, Xcode 15.0+

## License
`SearchBar` is released under the MIT license.
