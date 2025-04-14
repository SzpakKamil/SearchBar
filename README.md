# `SearchBar`

![Banner](./Resources/SearchBarBanner.jpg)

A SwiftUI package that integrates native UIKit and AppKit search bar components, offering a robust alternative to SwiftUI's `.searchable` modifier with platform-specific styling.

## Overview

`SearchBar` delivers native UIKit (`UISearchBar`) and AppKit (`NSSearchField`) search bars to SwiftUI, providing an authentic, platform-specific search experience. Designed for developers seeking greater control over search bar behavior and appearance compared to SwiftUI's `.searchable` modifier, this package ensures seamless integration across Apple platforms.

Key features include:
- Native look and feel on iOS, iPadOS, macOS, and visionOS
- Rounded corner styling exclusive to visionOS for a modern aesthetic
- Support for cancel buttons, clear actions, and search button interactions
- Cross-platform compatibility with adaptive implementations

## Features

- **Native Integration**: Uses UIKit's `UISearchBar` (iOS, iPadOS, visionOS) and AppKit's `NSSearchField` (macOS) for platform-authentic behavior.
- **Custom Styling**: Rounded corner style available on visionOS for a sleek, immersive look.
- **Dynamic Search**: Real-time text updates via SwiftUI bindings.
- **Cancel and Clear Support**: Includes cancel button (iOS/visionOS) and clear action (macOS) functionality.
- **Platform Adaptability**:
  - iOS 14.0+
  - iPadOS 14.0+
  - macOS 11.0+
  - visionOS 1.0+
- **Light and Dark Mode**: Fully compatible with system appearance settings.

## Usage

The `SearchBar` component is a SwiftUI `View` that wraps either a `UISearchBar` (iOS, iPadOS, visionOS) or `NSSearchField` (macOS), depending on the platform.

### iOS, iPadOS, and macOS

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            SearchBar(text: $searchText, prompt: "Search Symbols") {
                print("Search button clicked with text: \(searchText)")
            }
            Text("Searching: \(searchText)")
        }
        .padding()
    }
}
```

### visionOS (with Rounded Style)

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            SearchBar(text: $searchText, prompt: "Search Symbols", useRounded: true) {
                print("Search button clicked with text: \(searchText)")
            }
            Text("Searching: \(searchText)")
        }
        .padding()
    }
}
```

### Parameters

- `text`: A `Binding<String>` for two-way synchronization of the search input.
- `prompt`: A `String` placeholder for the search bar (default: "Search").
- `useRounded` (visionOS only): A `Bool` to enable rounded corner styling (default: `false`).
- `onSearchButtonClicked` (iOS/visionOS): A closure executed when the search button is clicked.
- `onClear` (macOS): A closure executed when the search text is cleared.

## Example

A complete example integrating the search bar into a SwiftUI app with platform-specific behaviors:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                #if os(macOS)
                SearchBar(text: $searchText, prompt: "Find Something") {
                    print("Search cleared")
                }
                #elseif os(visionOS)
                SearchBar(text: $searchText, prompt: "Find Something", useRounded: true) {
                    print("Searching for: \(searchText)")
                }
                #else
                SearchBar(text: $searchText, prompt: "Find Something") {
                    print("Searching for: \(searchText)")
                }
                #endif
                
                Text("Current search: \(searchText)")
                    .font(.headline)
                
                List {
                    Text("Result 1")
                    Text("Result 2")
                    Text("Result 3")
                }
            }
            .navigationTitle("Search Demo")
            .padding()
        }
    }
}
```

## Integration with Other Frameworks

`SearchBar` integrates seamlessly with SwiftUI layouts and components, such as:
- `NavigationView` for navigation-based search interfaces
- `List` for searchable lists
- `Form` for settings or filter screens
- `VStack`/`HStack` for custom layouts

## Installation

### Swift Package Manager

Add the package to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/SearchBar.git", from: "1.0.0")
]
```

Or via Xcode:
1. File > Swift Packages > Add Package Dependency
2. Enter the URL: `https://github.com/SzpakKamil/SearchBar.git`
3. Select the desired version.

## Requirements

- iOS 14.0+
- iPadOS 14.0+
- macOS 11.0+
- visionOS 1.0+
- Swift 5.4+
- Xcode 12.5+

## License

`SearchBar` is available under the MIT license.

## Notes

- On iOS and visionOS, the search bar includes a cancel button that appears during editing and triggers `resignFirstResponder()` when tapped.
- On macOS, the `NSSearchField` uses a rounded bezel style and supports clear actions via the `onClear` closure.
- The `useRounded` parameter is only applicable on visionOS; it is ignored on other platforms.

This package is perfect for developers who want a native, customizable search bar experience in SwiftUI, tailored to each platform’s unique characteristics.
