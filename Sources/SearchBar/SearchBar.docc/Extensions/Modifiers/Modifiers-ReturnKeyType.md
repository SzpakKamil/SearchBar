# ``SearchBar/SearchBar/searchBarReturnKeyType(_:)``

Configures the return key type for the `SearchBar`’s keyboard.

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

The `searchBarReturnKeyType(_:)` modifier sets the type of return key displayed on the keyboard when editing the `SearchBar`’s text. Available on iOS and visionOS, it supports types like `.search` or `.done` to match the search action.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIReturnKeyType` specifying the return key type (e.g., `.search`, `.done`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarReturnKeyType(.search)
    }
}
```

This example sets the return key to “Search” on the keyboard.

## See Also

- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``
