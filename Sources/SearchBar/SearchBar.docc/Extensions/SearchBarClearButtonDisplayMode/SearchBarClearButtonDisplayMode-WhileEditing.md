# ``SearchBar/SearchBarClearButtonDisplayMode/whileEditing``

A mode where the clear button is shown in the `SearchBar` only while editing.

@Metadata {
    @DisplayName("WhileEditing")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` clear button appears only during text editing.
- Suitable for interfaces where the clear button is relevant only when active.
- Used with the `searchBarClearButtonDisplayMode(_:)` modifier.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.whileEditing)
    }
}
```

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/always``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
