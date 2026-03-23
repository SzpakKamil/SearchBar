# ``SearchBar/SearchBarStyle/init(style:borderColor:textColor:tint:tokenBackground:backgroundColor:)``

Initializes `SearchBarStyle` with style and tokens.

@Metadata {
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Initializes using `SearchBarCornerStyle`.
- Optional: `textColor`, `tint`, `tokenBackground`, `backgroundColor`.
- Unavailable on macOS due to `tokenBackground` platform dependency.

## Parameters

- `style`: `SearchBarCornerStyle` for shape.
- `borderColor`: Optional `Color` for border (macOS only).
- `textColor`: Optional `Color` for text.
- `tint`: Optional `Color` for tint.
- `tokenBackground`: Optional `Color` for tokens.
- `backgroundColor`: Optional `Color` for background.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(style: .capsule, textColor: .red, tint: .blue, tokenBackground: .green, backgroundColor: .gray))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(style:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarCornerStyle``
- ``SearchBarToken``
