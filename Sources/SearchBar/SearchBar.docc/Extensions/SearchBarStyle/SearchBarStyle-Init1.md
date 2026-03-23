# ``SearchBar/SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:backgroundColor:)``

Initializes `SearchBarStyle` with custom radius.

@Metadata {
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

- Initializes with `cornerRadius`.
- Optional: `textColor`, `tint`, `backgroundColor`.
- Sets `tokenBackground` to `nil`.

## Parameters

- `cornerRadius`: `CGFloat` for corner radius.
- `borderColor`: Optional `Color` for border (macOS only).
- `textColor`: Optional `Color` for text.
- `tint`: Optional `Color` for tint.
- `backgroundColor`: Optional `Color` for background.

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
- ``SearchBarStyle/init(style:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarStyle/init(style:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarCornerStyle``
