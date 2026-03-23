# ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``

Defines an action for the clear button.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
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

`searchBarClearButtonAction(_:)` executes a closure on clear button tap. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `action`: A closure executed on clear button tap.

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

This logs a message on clear.

## See Also

- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``
