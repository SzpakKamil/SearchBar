# `SearchBar`
![Swift Version](https://img.shields.io/badge/Swift-5.9+-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2011.0+%20|%20watchOS%2010.0+%20|%20tvOS%2015.0+%20|%20visionOS%201.0+-15437D.svg)
![License](https://img.shields.io/badge/License-MIT-C8ECFE.svg)

![Banner](./Resources/SearchBar-Banner.png#gh-light-mode-only)
![Banner](./Resources/SearchBar-BannerDark.png#gh-dark-mode-only)

# Search, Unchained.
### I ditched the constraints of `.searchable`. SearchBar gives you total authority over your SwiftUI layout hierarchy.

Forget rigid patterns. I built **SearchBar** to bring modular freedom to your workflow. It fits your layout, respects your design, and gives you search on your terms across every Apple platform.

> **Native on the wrist and the big screen.**
> In v2.1.5, I added support for watchOS and tvOS. Build consistent experiences across every Apple device with a single API.

Visit the [Site](https://kamilszpak.com/searchbar) or [Documentation](https://documentation.kamilszpak.com/documentation/searchbar).

---

## Table of Contents

- [Production-Ready Features](#production-ready-features)
- [Your Layout, Your Rules](#your-layout-your-rules)
- [Instant Integration](#instant-integration)
- [Modifiers](#modifiers)
- [Resources](#resources)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Production-Ready Features
I handled the stability and details that SwiftUI often misses. Integrate it and stop worrying about the edge cases.

- **Native Integration**: Uses `UISearchBar` for iOS, iPadOS, and visionOS, with custom SwiftUI implementations for macOS, tvOS, and watchOS to ensure authentic platform behavior.
- **Tokens You Can Feel**: Forget manual parsing. SearchBar handles your filters for you with a lightweight token system that stays smooth under load.
- **From Wrist to Desktop**: Scale your UI between watchOS and macOS without losing a beat. Everything stays in sync.
- **Big Screen, Native**: Unlock Apple TV. Use native tvOS keyboards within your custom interface.
- **Full Localization**: Translated into every language available on Apple platforms, ensuring seamless integration with system language settings.
- **Accessibility & Tests**: Built-in support for VoiceOver and Dynamic Type, backed by a comprehensive suite of unit tests.

## Your Layout, Your Rules
Don't fight the framework. Shape your vision with modifiers you already know and love.

- **Design It Your Way**: You own every pixel. Choose materials, shapes, and colors. Stop fighting system defaults.
- **Two-Line Suggestions**: One line defines hints, the other triggers automatic filtering. Fast and clean.
- **Precision Edges**: Match your corner radius with one modifier so the search bar melts into your design.
- **Intelligent Input**: From iOS keyboards to visionOS eye-tracking and "Look to Dictate," SearchBar picks the right input method for you.
- **Smart Data Fields**: Suggest addresses, emails, or locations automatically with a single line of code.

## Instant Integration
Kill the boilerplate. Drop SearchBar in and build complex filtering systems with zero overhead.

The `SearchBar` prefix is used because the package is small and intended as a shortcut. To minimize the need to open documentation and to enhance discoverability, modifiers and views are prefixed with `SearchBar` (e.g., `SearchBar.searchBarStyle`), rather than just `.style`. This approach also aligns with project constraints and framework parity.

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
Explore the full range of modifiers to personalize icons, configure keyboards, and manage focus. For a complete list, refer to the [Documentation](https://documentation.kamilszpak.com/documentation/searchbar/modifiers).

### Appearance & Style
- `searchBarStyle(_:)`: Configure shapes like `.rounded` or `.capsule`.
- `searchBarIconView(_:)`: Set a custom icon view.
- `searchBarMaterial(_:)`: Apply modern `.glass` or `.solid` materials.
- `searchBarScale(_:)`: Fine-tune internal spacing (`.small`, `.medium`, `.large`).

### Input & Interaction
- `searchBarKeyboardType(_:)`, `searchBarReturnKeyType(_:)`, `searchBarAutoCorrectionType(_:)`.
- `searchBarLookToDictateEnabled(_:)`: Integrated eye-tracking for visionOS.
- `searchBarTextContentType(_:)`: Support for autofill and smart data fields.

### Events & State
- `searchBarChangeAction(_:)`: React in real-time to text changes.
- `searchBarBeginEditingAction(_:)` / `searchBarEndEditingAction(_:)`.
- `searchBarIsFocused(_:)`: Programmatically manage focus with a binding.

## Resources
- **Documentation**: Detailed [API Reference](https://documentation.kamilszpak.com/documentation/searchbar).
- **GitHub Repo**: Track issues and help shape the roadmap.
- **Swift Package Index**: Check [Compatibility](https://swiftpackageindex.com/SzpakKamil/SearchBar) across all platforms.

## Installation

### Swift Package Manager
Add `SearchBar` via SPM. The minimum version required is **2.1.5**.

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/SearchBar.git", from: "2.1.5")
]
```

### Agent Skill
Get expert guidance directly in your terminal:
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill SearchBar
```

## Requirements
- **Platforms**: iOS 14.0+, macOS 11.0+, tvOS 15.0+, watchOS 10.0+, visionOS 1.0+
- **Tools**: Swift 5.9+, Xcode 15.0+

## License
`SearchBar` is released under the MIT license.
