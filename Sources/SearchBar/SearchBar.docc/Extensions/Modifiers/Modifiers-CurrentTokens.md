# ``SearchBar/SearchBar/searchBarCurrentTokens(_:)``

Manages a dynamic list of current tokens for the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarCurrentTokens(_:)` modifier binds a list of `SearchBarToken` objects to the `SearchBar` to manage filter categories dynamically. Available on iOS and visionOS, it’s used for token-based filtering interfaces.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `tokens`: A `Binding<[SearchBarToken]>` to manage the current tokens.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCurrentTokens($tokens)
    }
}
```

This example binds a dynamic list of tokens to the `SearchBar`.

## See Also

- ``SearchBarToken``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``
