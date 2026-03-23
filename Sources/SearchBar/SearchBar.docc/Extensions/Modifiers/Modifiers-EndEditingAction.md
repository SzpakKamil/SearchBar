# ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``

Triggers an action when editing ends.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "12.0")
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

`searchBarEndEditingAction(_:)` executes a closure when editing ends. Supported on iOS, iPadOS, visionOS, and macOS (12.0+).

## Parameters

- `action`: A closure executed on edit end.

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

This logs a message when editing ends.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``
