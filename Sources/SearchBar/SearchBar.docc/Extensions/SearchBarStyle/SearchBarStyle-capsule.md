# ``SearchBar/SearchBarStyle/capsule``

A predefined `SearchBarStyle` with a capsule-shaped appearance.

@Metadata {
    @DisplayName("Capsule")
    @SupportedLanguage(swift)
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- A static `SearchBarStyle` property using `SearchBarCornerStyle.capsule`.
- Provides a corner radius of 18 (iOS, macOS) or 22 (visionOS).
- Applied via the `searchBarStyle(_:)` modifier for a pill-like `SearchBar` design.
- Suitable for modern, rounded search bar aesthetics.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.capsule)
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/rectangle``
- ``SearchBarStyle/rounded``
- ``SearchBarCornerStyle/capsule``
- ``SearchBar``
