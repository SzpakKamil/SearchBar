# ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``

Sets a binding to a list of suggestions for the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(macOS, introduced: "15.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarSuggestions(_:)` modifier binds a list of `SearchBarSuggestion` objects to the `SearchBar` for dynamic suggestion updates. Available on iOS, visionOS, and macOS, it enhances search with predictive suggestions.

## Parameters

- `suggestions`: A `Binding<[SearchBarSuggestion]>` to manage the suggestions.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var suggestions: [SearchBarSuggestion] = [
        SearchBarSuggestion(text: "Apple", systemName: "applelogo")
    ]
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarSuggestions($suggestions)
    }
}
```

This example binds a dynamic list of suggestions to the `SearchBar`.

## See Also

- ``SearchBarSuggestion``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``
