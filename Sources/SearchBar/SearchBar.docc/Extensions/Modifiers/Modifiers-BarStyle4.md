# ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)``

Configures the `SearchBar`’s style with a specific corner radius and color settings.

@Metadata {
    @SupportedLanguage(swift)
    @Available(macOS, introduced: "11.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)` modifier allows precise control over the `SearchBar`’s appearance by setting a custom corner radius, text color, tint, and background color. Available on macOS, this modifier is ideal for fine-tuning the search bar’s look.

## Parameters

- `cornerRadius`: A `CGFloat` defining the corner radius, defaulting to `0`.
- `textColor`: An optional `Color` for the search bar’s text. If `nil`, uses the system default.
- `tint`: An optional `Color` for the search bar’s tint. If `nil`, uses the system default.
- `backgroundColor`: An optional `Color` for the search bar’s background. If `nil`, uses the system default.

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

This example sets a custom corner radius of 10 and applies custom colors on macOS.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:backgroundColor:)``
