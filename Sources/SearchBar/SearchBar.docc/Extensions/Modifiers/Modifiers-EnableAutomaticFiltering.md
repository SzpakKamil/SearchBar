# ``SearchBar/SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``

Enables automatic filtering of suggestions in the `SearchBar` with an optional custom filtering action.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(macOS, introduced: "15.0")
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

The `searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)` modifier enables automatic filtering of suggestions based on the user’s input, with an optional custom filtering closure. Available on iOS, iPadOS, visionOS, and macOS, it enhances suggestion usability.

## Parameters

- `value`: A `Bool` indicating whether automatic filtering is enabled, defaulting to `true`.
- `filteringAction`: An optional closure that takes a `String` (input text) and a `SearchBarSuggestion`, returning a `Bool` to determine if the suggestion should be shown.

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

This example enables automatic filtering of suggestions.

## See Also

- ``SearchBarSuggestion``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``
