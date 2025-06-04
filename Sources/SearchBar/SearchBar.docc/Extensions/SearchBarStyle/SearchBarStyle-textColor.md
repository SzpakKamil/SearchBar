# ``SearchBar/SearchBarStyle/textColor``

The color of the text inside the `SearchBar`.

@Metadata {
    @DisplayName("TextColor")
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- An optional `Color` value for the `SearchBar`’s input text.
- If `nil`, uses the system default text color.
- Applied via `SearchBarStyle` initializers.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(textColor: .red))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
