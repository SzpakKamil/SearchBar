# ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``

Configures style with corner radius and token background.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)` sets corner radius and colors including tokens. Supported on iOS and visionOS.

## Parameters

- `cornerRadius`: A `CGFloat` for corner radius. Defaults to `0`.
- `borderColor`: Optional `Color` for the border (macOS only). Defaults to system default.
- `textColor`: Optional `Color` for text. Defaults to system default.
- `tint`: Optional `Color` for tint. Defaults to system default.
- `tokenBackground`: Optional `Color` for token backgrounds. Defaults to system default.
- `backgroundColor`: Optional `Color` for background. Defaults to system default.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(cornerRadius: 15, textColor: .black, tint: .blue, tokenBackground: .yellow, backgroundColor: .gray)
    }
}
```

This sets a corner radius of 15 with yellow tokens.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
