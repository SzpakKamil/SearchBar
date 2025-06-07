# ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``

Defines an action to perform when the cancel button is clicked in the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
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

The `searchBarCancelButtonAction(_:)` modifier specifies a closure to execute when the user taps the cancel button. Available on iOS and visionOS, it’s ideal for handling cancellation logic, such as clearing text or dismissing the keyboard.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `action`: A closure with no parameters or return value, executed on cancel button tap.

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

This clears the search text when the cancel button is tapped.

## See Also

- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``
- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``
