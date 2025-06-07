# ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)``

Applies a predefined corner style to the `SearchBar` with customizations including token background color.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)` modifier configures the `SearchBar`’s appearance using a `SearchBarCornerStyle` (e.g., `.rounded`) with optional overrides for text color, tint, token background, and background color. Available on iOS and visionOS, this modifier supports token-based search interfaces.

## Parameters

- `style`: A `SearchBarCornerStyle` defining the corner style, defaulting to `.rounded`.
- `textColor`: An optional `Color` for the search bar’s text. If `nil`, uses the system default.
- `tint`: An optional `Color` for the search bar’s tint. If `nil`, uses the system default.
- `tokenBackground`: An optional `Color` for the background of tokens. If `nil`, uses the system default.
- `backgroundColor`: An optional `Color` for the search bar’s background. If `nil`, uses the system default.

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

This example styles the `SearchBar` with a capsule shape and custom colors, including a yellow token background.

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
