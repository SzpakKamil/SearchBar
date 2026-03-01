# ``SearchBarMaterial/glass``

A case of the `SearchBarMaterial` enum that applies a translucent “Liquid Glass” material to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
    @Available(tvOS, introduced: "26.0")
    @Available(watchOS, introduced: "26.0")
    @Available(visionOS, introduced: "26.0")
    @Available(Xcode, introduced: "26.0")
    @Available(Swift, introduced: "5.9")
    @DisplayName("Glass")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `glass` case specifies a translucent “Liquid Glass” material for the `SearchBar` view, providing a modern, frosted appearance that blends with the background. It has a fixed `id` of `1` and is applied using the `.searchBarMaterial(.glass)` modifier. This material is ideal for interfaces aiming for a sleek, immersive aesthetic, as introduced in iOS 26.0, macOS 26.0, and later.

> Important: This type is unavailable on visionOS.

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarMaterial(.glass)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Glass-iOS", alt: "Glass Material") {
            Glass Material
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Glass-iPadOS", alt: "Glass Material") {
            Glass Material
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Glass-macOSTahoe", alt: "Glass Material") {
            Glass Material
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Glass-tvOS", alt: "Glass Material") {
            Glass Material
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Glass-watchOS", alt: "Glass Material") {
            Glass Material
        }
    }
}

## Related Types
- ``SearchBar/searchBarMaterial(_:)``
- ``SearchBar``
