# ``SearchBarMaterial/glass``

A case of the `SearchBarMaterial` enum that applies a translucent “Liquid Glass” material to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
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

## Related Types
- ``SearchBar/SearchBar/searchBarMaterial(_:)``
- ``SearchBar``
