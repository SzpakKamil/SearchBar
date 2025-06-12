# ``SearchBar/SearchBarClearButtonDisplayMode/never``

A mode where the clear button is never shown in the `SearchBar`.

@Metadata {
    @DisplayName("Never")
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

- Specifies that the `SearchBar` clear button is never displayed.
- Suitable for interfaces where clearing is handled differently.
- Used with the `searchBarClearButtonDisplayMode(_:)` modifier.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.never)
    }
}
```

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/always``
- ``SearchBarClearButtonDisplayMode/whileEditing``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
