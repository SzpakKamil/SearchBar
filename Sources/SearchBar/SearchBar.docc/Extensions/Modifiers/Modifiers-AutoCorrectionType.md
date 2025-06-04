# ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``

Controls the autocorrection behavior of the `SearchBar`’s text input.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarAutoCorrectionType(_:)` modifier configures whether the `SearchBar`’s text input should use autocorrection. Available on iOS (14.0+) and visionOS (1.0+), it defaults to `.default`, which typically enables autocorrection unless overridden.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocorrectionType` specifying the autocorrection behavior, defaulting to `.default`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarAutoCorrectionType(.no)
    }
}
```

This example disables autocorrection to prevent automatic text changes.

## See Also

- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
