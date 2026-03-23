# ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:backgroundColor:)``

Configures style with specific corner radius and colors.

@Metadata {
    @SupportedLanguage(swift)
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)` sets custom corner radius and colors. Supported on macOS.

## Parameters

- `cornerRadius`: A `CGFloat` for corner radius. Defaults to `0`.
- `borderColor`: Optional `Color` for the border (macOS only). Defaults to system default.
- `textColor`: Optional `Color` for text. Defaults to system default.
- `tint`: Optional `Color` for tint. Defaults to system default.
- `backgroundColor`: Optional `Color` for background. Defaults to system default.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(cornerRadius: 10, textColor: .blue, tint: .purple, backgroundColor: .gray)
    }
}
```

This sets a corner radius of 10 with custom colors.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)``
