# ``SearchBar/SearchBar/searchBarKeyboardType(_:)``

Sets the keyboard type for the `SearchBar`’s text input.

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

The `searchBarKeyboardType(_:)` modifier configures the type of keyboard displayed when the user edits the `SearchBar`’s text. Available on iOS and visionOS, it supports types like `.emailAddress` or `.numberPad` to match the expected input.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIKeyboardType` specifying the keyboard type (e.g., `.default`, `.emailAddress`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarKeyboardType(.emailAddress)
    }
}
```

This example uses an email keyboard for the `SearchBar`.

## See Also

- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``
