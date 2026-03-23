# ``SearchBar/SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``

Enables automatic suggestion filtering.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(macOS, introduced: "15.0")
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

`searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)` filters suggestions based on input. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `value`: `Bool` enabling filtering. Defaults to `true`.
- `filteringAction`: Optional closure determining suggestion visibility.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarSuggestions(.constant([SearchBarSuggestion(text: "Apple", systemName: "applelogo")]))
            .searchBarEnableAutomaticSuggestionsFiltering()
    }
}
```

This enables automatic filtering.

## See Also

- ``SearchBarSuggestion``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``
