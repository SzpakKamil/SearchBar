# ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``

Defines an action to perform when the clear button is clicked in the `SearchBar`.

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

The `searchBarClearButtonAction(_:)` modifier specifies a closure to execute when the user taps the clear button. Available on iOS, visionOS, and macOS, it’s ideal for handling clearing logic, such as resetting the search state.

## Parameters

- `action`: A closure with no parameters or return value, executed on clear button tap.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonAction {
                print("Search text cleared")
            }
    }
}
```

This example logs a message when the clear button is tapped.

## See Also

- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``
