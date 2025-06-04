# ``SearchBar/SearchBarCornerStyle/capsule``

A style where the `SearchBar` has a fully rounded, capsule-shaped appearance.

@Metadata {
    @DisplayName("Capsule")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies a capsule-shaped `SearchBar` with fully rounded edges.
- Provides a corner radius of 18 (iOS, macOS) or 22 (visionOS).
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

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/rectangular``
- ``SearchBarCornerStyle/rounded``
- ``SearchBarStyle``
- ``SearchBar``
