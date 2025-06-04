# ``SearchBar/SearchBarStyle/init(cornerRadius:textColor:tint:backgroundColor:)``

Creates a `SearchBarStyle` with a custom corner radius and optional colors.

@Metadata {
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Initializes a `SearchBarStyle` with a specified `cornerRadius`.
- Accepts optional `textColor`, `tint`, and `backgroundColor` parameters.
- Sets `tokenBackground` to `nil`.

## Parameters

- `cornerRadius`: A `CGFloat` for the `SearchBar`’s corner roundness.
- `textColor`: An optional `Color` for the text.
- `tint`: An optional `Color` for interactive elements.
- `backgroundColor`: An optional `Color` for the background.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(cornerRadius: 10, textColor: .red, tint: .blue, backgroundColor: .gray))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/init(style:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarStyle/init(style:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarCornerStyle``
