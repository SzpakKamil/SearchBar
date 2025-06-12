# ``SearchBar/SearchBarCornerStyle/rectangle``

A style where the `SearchBar` has a sharp-edged, rectangle appearance.

@Metadata {
    @DisplayName("rectangle")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies a rectangle `SearchBar` with sharp, unrounded edges.
- Provides a corner radius of 0.
- Used with the `searchBarStyle(_:)` modifier or `SearchBarStyle.rectangle`.
- Suitable for minimalistic or geometric search bar designs.

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

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rounded``
- ``SearchBarStyle``
- ``SearchBar``
