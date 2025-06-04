# ``SearchBar/SearchBar/searchBarIsFocused(_:)``

Binds the `SearchBar`’s focus state to a Boolean value.

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

The `searchBarIsFocused(_:)` modifier allows you to control and monitor the `SearchBar`’s focus state via a `Binding<Bool>`. Available on iOS, visionOS, and macOS, it’s useful for programmatically focusing or defocusing the search bar.

## Parameters

- `value`: A `Binding<Bool>` indicating whether the `SearchBar` is focused.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var isFocused = false
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .searchBarIsFocused($isFocused)
            Button("Focus Search Bar") {
                isFocused = true
            }
        }
    }
}
```

This example focuses the `SearchBar` when the button is pressed.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
