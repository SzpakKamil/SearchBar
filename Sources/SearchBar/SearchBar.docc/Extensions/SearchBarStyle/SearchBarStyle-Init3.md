# ``SearchBar/SearchBarStyle/init(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``

Creates a `SearchBarStyle` with a custom corner radius and optional colors, including `tokenBackground`.

@Metadata {
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Initializes a `SearchBarStyle` with a specified `cornerRadius`.
- Accepts optional `textColor`, `tint`, `tokenBackground`, and `backgroundColor` parameters.
- Unavailable on macOS due to `tokenBackground` platform dependency.

## Parameters

- `cornerRadius`: A `CGFloat` for the `SearchBar`’s corner roundness.
- `textColor`: An optional `Color` for the text.
- `tint`: An optional `Color` for interactive elements.
- `tokenBackground`: An optional `Color` for token backgrounds.
- `backgroundColor`: An optional `Color` for the background.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(cornerRadius: 10, textColor: .red, tint: .blue, tokenBackground: .green, backgroundColor: .gray))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/init(cornerRadius:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(style:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(style:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarCornerStyle``
- ``SearchBarToken``
