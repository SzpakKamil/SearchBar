# ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``

Sets a binding to a list of suggested tokens for the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(iPadOS, introduced: "16.0")
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

The `searchBarSuggestedTokens(_:)` modifier binds a list of `SearchBarToken` objects as suggestions for the `SearchBar`, allowing dynamic updates. Available on iOS and visionOS, it’s used to provide selectable tokens for filtering.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

> Warning: note that without current tokens modifier used this modifiers will not do anything when selected

## Parameters

- `tokens`: A `Binding<[SearchBarToken]>` to manage suggested tokens.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var suggestedTokens: [SearchBarToken] = [
        SearchBarToken(text: "Favorites", systemName: "star.fill")
    ]
    @State private var currentTokens: [SearchBarToken] = []
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCurrentTokens($currentTokens)
            .searchBarSuggestedTokens($suggestedTokens)
    }
}
```

This example provides a dynamic list of suggested tokens and manages current tokens to enable selection functionality.

## See Also

- ``SearchBarToken``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-54f3``
