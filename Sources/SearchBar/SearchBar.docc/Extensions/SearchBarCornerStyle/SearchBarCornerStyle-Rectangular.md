# ``SearchBar/SearchBarCornerStyle/rectangular``

A style where the `SearchBar` has a sharp-edged, rectangular appearance.

@Metadata {
    @DisplayName("Rectangular")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies a rectangular `SearchBar` with sharp, unrounded edges.
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
            .searchBarStyle(style: .rectangular)
    }
}
```

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rounded``
- ``SearchBarStyle``
- ``SearchBar``
