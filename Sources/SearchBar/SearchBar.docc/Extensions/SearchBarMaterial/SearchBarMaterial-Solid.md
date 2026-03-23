# ``SearchBar/SearchBarMaterial/solid``

Opaque solid material.

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
    @DisplayName("Solid")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`solid` specifies an opaque material. Applied via `.searchBarMaterial(.solid)`. Available on iOS 26.0+, macOS 26.0+.

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

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Solid-iOS", alt: "Solid Material") {
            Solid Material
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Solid-iPadOS", alt: "Solid Material") {
            Solid Material
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Solid-macOSTahoe", alt: "Solid Material") {
            Solid Material
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Solid-tvOS", alt: "Solid Material") {
            Solid Material
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-Material-Solid-watchOS", alt: "Solid Material") {
            Solid Material
        }
    }
}

## Related Types
- ``SearchBar/SearchBar/searchBarMaterial(_:)``
- ``SearchBar``
