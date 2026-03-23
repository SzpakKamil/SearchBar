# ``SearchBar/SearchBar/searchBarChangeAction(_:)``

Triggers an action when search text changes.

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

`searchBarChangeAction(_:)` executes a closure on text change. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `action`: A closure taking the new text string.

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

This logs new text on change.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
