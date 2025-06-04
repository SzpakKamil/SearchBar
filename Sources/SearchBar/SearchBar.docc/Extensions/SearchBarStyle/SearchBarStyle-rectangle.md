# ``SearchBar/SearchBarStyle/rectangle``

A predefined `SearchBarStyle` with a rectangular appearance.

@Metadata {
    @DisplayName("Rectangle")
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

- A static `SearchBarStyle` property using `SearchBarCornerStyle.rectangular`.
- Provides a corner radius of 0 for sharp edges.
- Applied via the `searchBarStyle(_:)` modifier for a minimalistic `SearchBar` design.
- Suitable for geometric or modern search bar layouts.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rectangle)
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rounded``
- ``SearchBarCornerStyle/rectangular``
- ``SearchBar``
