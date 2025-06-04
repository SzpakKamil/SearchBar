# ``SearchBar/SearchBar/searchBarChangeAction(_:)``

Triggers an action when the search text in the `SearchBar` changes.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarChangeAction(_:)` modifier executes a closure whenever the user modifies the `SearchBar`’s text. Available on iOS, visionOS, and macOS, it’s useful for real-time search updates or logging user input.

## Parameters

- `action`: A closure that takes a `String` parameter (the new text) and returns no value.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarChangeAction { newText in
                print("Search text changed to: \(newText)")
            }
    }
}
```

This example logs the new search text each time it changes.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
