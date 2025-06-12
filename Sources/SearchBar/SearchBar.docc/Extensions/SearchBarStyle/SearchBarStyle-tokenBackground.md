# ``SearchBar/SearchBarStyle/tokenBackground``

The background color for tokens in the `SearchBar`.

@Metadata {
    @DisplayName("TokenBackground")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- An optional `Color` value for the background of tokens in the `SearchBar`.
- If `nil`, uses the system default token background.
- Unavailable on macOS due to platform-specific token rendering.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(tokenBackground: .blue))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarToken``
