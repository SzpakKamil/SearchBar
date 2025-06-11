# ``SearchBar/SearchBarScale/large``

A case of the `SearchBarScale` enum that applies an expanded size to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @DisplayName("Large")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `large` case specifies an expanded size for the `SearchBar` view, with a `heightMultiplier` of 0.9 (or 3 on macOS) and a `cornerScale` of 1.25. It has a fixed `id` of `2` and is applied using the `.searchBarScale(.large)` modifier. This scale is designed for prominent or touch-friendly interfaces where a larger search bar enhances usability. Available on iOS 14.0+, iPadOS 14.0+ and macOS 11.0+.

> Important: This type is unavailable on visionOS.

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.large)
            .searchBarMaterial(.solid)
    }
}
```
