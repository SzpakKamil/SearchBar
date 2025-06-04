# ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:backgroundColor:)``

Applies a predefined corner style to the `SearchBar` with optional customizations for text color, tint, and background color.

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

The `searchBarStyle(_:textColor:tint:backgroundColor:)` modifier configures the `SearchBar`’s appearance using a `SearchBarCornerStyle` (e.g., `.rounded`) with optional overrides for text color, tint, and background color. Available on macOS, this modifier is tailored for macOS-specific styling needs.

## Parameters

- `style`: A `SearchBarCornerStyle` defining the corner style, defaulting to `.rounded`.
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
            .searchBarStyle(.rounded, textColor: .blue, tint: .purple, backgroundColor: .gray)
    }
}
```

This example applies a rounded style to the `SearchBar` with custom colors on macOS.

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
