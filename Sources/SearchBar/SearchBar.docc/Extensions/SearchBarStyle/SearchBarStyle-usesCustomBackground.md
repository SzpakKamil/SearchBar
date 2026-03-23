# ``SearchBar/SearchBarStyle/usesCustomBackground``

Indicates custom background.

@Metadata {
    @DisplayName("UsesCustomBackground")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- `true` if custom ``backgroundColor`` is set.
- `false` for default system background.
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
