# ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``

Configures the `SearchBar`’s style with a specific corner radius and color settings, including token background.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)` modifier provides detailed customization of the `SearchBar`’s appearance by setting a corner radius, text color, tint, token background color, and background color. Available on iOS and visionOS, this modifier supports token-based interfaces.

## Parameters

- `cornerRadius`: A `CGFloat` defining the corner radius, defaulting to `0`.
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
            .searchBarStyle(cornerRadius: 15, textColor: .black, tint: .blue, tokenBackground: .yellow, backgroundColor: .gray)
    }
}
```

This example sets a corner radius of 15 and custom colors, including a yellow token background.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)``
