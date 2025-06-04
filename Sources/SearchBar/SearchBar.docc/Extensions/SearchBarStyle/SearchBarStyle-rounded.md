# ``SearchBar/SearchBarStyle/rounded``

A predefined `SearchBarStyle` with a softly rounded appearance.

@Metadata {
    @DisplayName("Rounded")
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

- A static `SearchBarStyle` property using `SearchBarCornerStyle.rounded`.
- Provides a corner radius of 5 (macOS) or 10 (iOS, visionOS).
- Applied via the `searchBarStyle(_:)` modifier for a user-friendly `SearchBar` design.
- Suitable for standard, approachable search bar aesthetics.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded)
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rectangle``
- ``SearchBarCornerStyle/rounded``
- ``SearchBar``
