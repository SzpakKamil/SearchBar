# ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)``

Applies a corner style with optional custom colors.

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

`searchBarStyle(_:textColor:tint:backgroundColor:)` configures appearance using `SearchBarCornerStyle` with optional color overrides. Supported on macOS.

## Parameters

- `style`: A `SearchBarCornerStyle` value. Defaults to `.rounded`.
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
            .searchBarStyle(.rounded, textColor: .blue, tint: .purple, backgroundColor: .gray)
    }
}
```

This applies a rounded style with custom colors.

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
