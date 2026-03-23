# ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``

Defines an action for the cancel button.

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

`searchBarCancelButtonAction(_:)` executes a closure on cancel button tap. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `action`: A closure executed on cancel button tap.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonAction {
                searchText = ""
                print("Search cancelled")
            }
    }
}
```

This clears text on cancel.

## See Also

- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``
- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``
