# ``SearchBar/SearchBarStyle/usesCustomBackground``

A flag indicating whether a custom background color is set for the `SearchBar`.

@Metadata {
    @DisplayName("UsesCustomBackground")
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

- A `Bool` value that is `true` if a custom ``backgroundColor`` is provided.
- Set to `false` when the default system background is used.
- Read-only, determined during initialization.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(backgroundColor: .gray)) // usesCustomBackground is true
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
