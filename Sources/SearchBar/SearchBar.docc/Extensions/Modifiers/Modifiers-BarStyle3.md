# ``SearchBar/SearchBar/searchBarStyle(_:borderColor:textColor:tint:tokenBackground:backgroundColor:)``

Applies a corner style with custom token background color.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
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

`searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)` configures appearance using `SearchBarCornerStyle` with optional color overrides. Supported on iOS and visionOS.

## Parameters

- `style`: A `SearchBarCornerStyle` value. Defaults to `.rounded`.
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
            .searchBarStyle(.capsule, textColor: .black, tint: .blue, tokenBackground: .yellow, backgroundColor: .gray)
    }
}
```

This styles `SearchBar` with a capsule shape and yellow tokens.

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
