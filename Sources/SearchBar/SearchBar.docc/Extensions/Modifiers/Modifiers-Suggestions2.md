# ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``

Sets a static list of suggestions for the `SearchBar`.

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

The `searchBarSuggestions(_:)` modifier sets a static list of `SearchBarSuggestion` objects for the `SearchBar`. Available on iOS, iPadOS, visionOS, and macOS, it provides a fixed set of suggestions for the user.

## Parameters

- `suggestions`: An array of `SearchBarSuggestion` objects representing the suggestions.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarSuggestions([
                SearchBarSuggestion(text: "Banana", systemName: "leaf")
            ])
    }
}
```

This example sets a static list of suggestions for the `SearchBar`.

## See Also

- ``SearchBarSuggestion``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``
