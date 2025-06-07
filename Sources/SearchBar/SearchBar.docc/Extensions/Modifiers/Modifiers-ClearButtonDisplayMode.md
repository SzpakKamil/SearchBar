# ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``

Configures the display behavior of the clear button in the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
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

The `searchBarClearButtonDisplayMode(_:)` modifier determines when the clear button is visible in the `SearchBar`. Available on iOS, iPadOS, visionOS, and macOS, it supports modes like always visible or visible only while editing.

## Parameters

- `mode`: A `SearchBarClearButtonDisplayMode` specifying the display behavior (e.g., `.always`, `.whileEditing`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.whileEditing)
    }
}
```

This example shows the clear button only while the user is editing.

## See Also

- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``
