# ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``

Configures the display behavior of the cancel button in the `SearchBar`.

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

The `searchBarCancelButtonDisplayMode(_:)` modifier determines when the cancel button is visible in the `SearchBar`. Available on iOS and visionOS, it supports modes like always visible or visible only while editing.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `mode`: A `SearchBarCancelButtonDisplayMode` specifying the display behavior (e.g., `.always`, `.whileEditing`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.always)
    }
}
```

This example ensures the cancel button is always visible.

## See Also

- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``
