# ``SearchBar/SearchBarStyle/cornerRadius``

The roundness of the `SearchBar`’s corners.

@Metadata {
    @DisplayName("CornerRadius")
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

- A `CGFloat` value determining the corner radius of the `SearchBar`.
- Set directly via initializers or derived from a `SearchBarCornerStyle`.
- Common values include 0 (rectangle), 10 (rounded on iOS/visionOS), or 18/22 (capsule).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(cornerRadius: 10))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
