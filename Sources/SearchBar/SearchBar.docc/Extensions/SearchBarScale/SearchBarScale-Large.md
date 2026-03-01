# ``SearchBar/SearchBarScale/large``

A case of the `SearchBarScale` enum that applies an expanded size to the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "14.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DisplayName("Large")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `large` case specifies an expanded size for the `SearchBar` view, with a `heightMultiplier` of 0.9 (or 0.8 on iOS 26.0+; 3 on macOS) and a `cornerScale` of 1.4. It has a fixed `id` of `2` and is applied using the `.searchBarScale(.large)` modifier. This scale is designed for prominent or touch-friendly interfaces where a larger search bar enhances usability. Available on iOS 14.0+, iPadOS 14.0+, and macOS 11.0+.

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

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Large-iOS", alt: "Large Scale") {
            Large Scale
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Large-iPadOS", alt: "Large Scale") {
            Large Scale
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Large-macOSTahoe", alt: "Large Scale") {
            Large Scale
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Large-tvOS", alt: "Large Scale") {
            Large Scale
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Large-watchOS", alt: "Large Scale") {
            Large Scale
        }
    }
}
