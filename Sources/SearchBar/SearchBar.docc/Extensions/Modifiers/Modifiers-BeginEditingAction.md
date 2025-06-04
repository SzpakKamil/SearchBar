# ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``

Triggers an action when the user begins editing the `SearchBar`’s text.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "12.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarBeginEditingAction(_:)` modifier specifies a closure to execute when the user starts editing the `SearchBar`’s text. Available on iOS, visionOS, and macOS, it’s useful for tracking when the search bar becomes active.

## Parameters

- `action`: A closure with no parameters or return value, executed when editing begins.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarBeginEditingAction {
                print("User started editing")
            }
    }
}
```

This example logs a message when the user begins editing the search text.

## See Also

- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``
