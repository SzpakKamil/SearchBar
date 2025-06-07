# ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``

Configures the autocapitalization behavior of the `SearchBar`’s text input.

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

The `searchBarAutoCapitalizationType(_:)` modifier sets the autocapitalization behavior for the `SearchBar`’s text input, such as capitalizing words or sentences. Available on iOS (14.0+) and visionOS (1.0+), this modifier helps tailor the keyboard experience to the expected input.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocapitalizationType` specifying the capitalization behavior (e.g., `.none`, `.words`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarAutoCapitalizationType(.none)
    }
}
```

This example disables autocapitalization, ensuring all text remains lowercase as typed.

## See Also

- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
