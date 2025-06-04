# ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``

Triggers an action when the user stops editing the `SearchBar`’s text.

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

The `searchBarEndEditingAction(_:)` modifier specifies a closure to execute when the user finishes editing the `SearchBar`’s text. Available on iOS, visionOS, and macOS (12.0+), it’s useful for handling post-editing logic.

## Parameters

- `action`: A closure with no parameters or return value, executed when editing ends.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarEndEditingAction {
                print("User stopped editing")
            }
    }
}
```

This example logs a message when editing ends.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``
