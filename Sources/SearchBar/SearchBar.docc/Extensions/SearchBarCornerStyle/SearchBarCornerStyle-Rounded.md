# ``SearchBar/SearchBarCornerStyle/rounded``

A style where the `SearchBar` has a softly rounded appearance.

@Metadata {
    @DisplayName("Rounded")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies a `SearchBar` with softly rounded corners.
- Provides a corner radius of 5 (macOS) or 10 (iOS, visionOS).
- Used with the `searchBarStyle(_:)` modifier or `SearchBarStyle.rounded`.
- Suitable for standard, user-friendly search bar designs.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style: .rounded)
    }
}
```

## See Also

- ``SearchBarCornerStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rectangle``
- ``SearchBarStyle``
- ``SearchBar``
