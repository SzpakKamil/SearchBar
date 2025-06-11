# ``SearchBar/SearchBarScale/medium``

A case of the `SearchBarScale` enum that applies a balanced size to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @DisplayName("Medium")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `medium` case specifies a balanced size for the `SearchBar` view, with a `heightMultiplier` of 0.80 (or 2 on macOS) and a `cornerScale` of 1.15. It has a fixed `id` of `1` and is applied using the `.searchBarScale(.medium)` modifier. This scale is suitable for standard layouts requiring a moderately sized search bar. Available on iOS 14.0+, iPadOS 14.0+ and macOS 11.0+.

> Important: This type is unavailable on visionOS.

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.medium)
            .searchBarMaterial(.glass)
    }
}
```

