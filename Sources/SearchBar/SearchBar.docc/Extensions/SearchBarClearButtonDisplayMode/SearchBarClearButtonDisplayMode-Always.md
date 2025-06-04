# ``SearchBar/SearchBarClearButtonDisplayMode/always``

A mode where the clear button is always visible in the `SearchBar`.

@Metadata {
    @DisplayName("Always")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` clear button is always displayed.
- Suitable for interfaces requiring constant access to the clear action.
- Used with the `searchBarClearButtonDisplayMode(_:)` modifier.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.always)
    }
}
```

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/whileEditing``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
