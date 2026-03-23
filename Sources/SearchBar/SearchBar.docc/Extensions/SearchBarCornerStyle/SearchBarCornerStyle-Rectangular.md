# ``SearchBar/SearchBarCornerStyle/rectangle``

Rectangular search bar.

@Metadata {
    @DisplayName("rectangle")
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

- Rectangle shape with sharp edges.
- Corner radius: 0.
- Use with `searchBarStyle(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style: .rectangle)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iPadOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-macOSTahoe", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-visionOS", alt: "Rectangle") {
            Rectangle
        }
    }
}

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rounded``
- ``SearchBarStyle``
- ``SearchBar``
