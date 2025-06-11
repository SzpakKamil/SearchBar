# ``SearchBar/SearchBarMaterial/solid``

A case of the `SearchBarMaterial` enum that applies an opaque material to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
    @Available(Xcode, introduced: "26.0")
    @Available(Swift, introduced: "5.9")
    @DisplayName("Solid")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `solid` case specifies an opaque material with a solid background for the `SearchBar` view, providing high contrast and clarity. It has a fixed `id` of `0` and is applied using the `.searchBarMaterial(.solid)` modifier. This material is ideal for interfaces where the search bar needs to stand out prominently against the background. Introduced in iOS 26.0, macOS 26.0, and later, it supports the modern Apple design language.

> Important: This type is unavailable on visionOS.

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarMaterial(.solid)
    }
}
```

## Related Types
- ``SearchBar/SearchBar/searchBarMaterial(_:)``
- ``SearchBar``
