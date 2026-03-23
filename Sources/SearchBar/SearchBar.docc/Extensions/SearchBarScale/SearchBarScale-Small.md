# ``SearchBar/SearchBarScale/small``

Compact search bar size.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DisplayName("Small")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`small` specifies compact size (`heightMultiplier`: 1.0/0.82/1, `cornerScale`: 1.0). Applied via `.searchBarScale(.small)`. Available on iOS 14.0+, iPadOS 14.0+, macOS 11.0+.

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

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Small-iOS", alt: "Small Scale") {
            Small Scale
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Small-iPadOS", alt: "Small Scale") {
            Small Scale
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Small-macOSTahoe", alt: "Small Scale") {
            Small Scale
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Small-tvOS", alt: "Small Scale") {
            Small Scale
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Small-watchOS", alt: "Small Scale") {
            Small Scale
        }
    }
}
