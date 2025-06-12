# ``SearchBar/SearchBarScale/small``

A case of the `SearchBarScale` enum that applies a compact size to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @DisplayName("Small")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `small` case specifies a compact size for the `SearchBar` view, with a `heightMultiplier` of 1.0 (or 1 on macOS) and a `cornerScale` of 1.0. It has a fixed `id` of `0` and is applied using the `.searchBarScale(.small)` modifier. This scale is ideal for minimalistic interfaces where space is constrained or a subtle search bar is preferred. Available on iOS 14.0+, iPadOS 14.0+ and macOS 11.0+.

> Important: This type is unavailable on visionOS.

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.small)
            .searchBarMaterial(.solid)
    }
}
```
