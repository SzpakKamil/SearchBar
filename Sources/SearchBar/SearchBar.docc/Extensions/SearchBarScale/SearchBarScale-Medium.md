# ``SearchBar/SearchBarScale/medium``

Balanced search bar size.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DisplayName("Medium")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`medium` specifies balanced size (`heightMultiplier`: 0.8/0.77/2, `cornerScale`: 1.2/1.35). Applied via `.searchBarScale(.medium)`. Available on iOS 14.0+, iPadOS 14.0+, macOS 11.0+.

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

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Medium-iOS", alt: "Medium Scale") {
            Medium Scale
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Medium-iPadOS", alt: "Medium Scale") {
            Medium Scale
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Medium-macOSTahoe", alt: "Medium Scale") {
            Medium Scale
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Medium-tvOS", alt: "Medium Scale") {
            Medium Scale
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-Scale-Medium-watchOS", alt: "Medium Scale") {
            Medium Scale
        }
    }
}
