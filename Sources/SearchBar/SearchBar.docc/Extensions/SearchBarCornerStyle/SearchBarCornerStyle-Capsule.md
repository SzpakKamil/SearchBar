# ``SearchBar/SearchBarCornerStyle/capsule``

A style where the `SearchBar` has a fully rounded, capsule-shaped appearance.

@Metadata {
    @DisplayName("Capsule")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "14.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies a capsule-shaped `SearchBar` with fully rounded edges.
- Provides a corner radius of 18 (iOS, iPadOS, macOS) or 22 (visionOS).
- Used with the `searchBarStyle(_:)` modifier or `SearchBarStyle.capsule`.
- Suitable for modern, pill-like search bar designs.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style: .capsule)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iPadOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-macOSTahoe", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-visionOS", alt: "Capsule") {
            Capsule
        }
    }
}

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/rectangle``
- ``SearchBarCornerStyle/rounded``
- ``SearchBarStyle``
- ``SearchBar``
