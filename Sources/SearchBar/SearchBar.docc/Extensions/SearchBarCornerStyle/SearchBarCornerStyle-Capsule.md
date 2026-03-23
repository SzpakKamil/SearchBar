# ``SearchBar/SearchBarCornerStyle/capsule``

Capsule-shaped search bar.

@Metadata {
    @DisplayName("Capsule")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
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

- Capsule shape with fully rounded edges.
- Corner radius: 18 (iOS/macOS), 22 (visionOS).
- Use with `searchBarStyle(_:)`.

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
