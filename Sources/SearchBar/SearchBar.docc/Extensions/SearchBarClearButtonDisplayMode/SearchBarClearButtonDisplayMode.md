# ``SearchBar/SearchBarClearButtonDisplayMode``

An enumeration that specifies when the clear button is displayed in a `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarClearButtonDisplayMode` controls the visibility of the clear button in a `SearchBar`, offering four modes: `never`, `always`, `whileEditing`, or `unlessEditing`. It is used with the `searchBarClearButtonDisplayMode(_:)` modifier to configure the `SearchBar`’s behavior on macOS, iOS, and visionOS.

## Cases

- ``SearchBarClearButtonDisplayMode/never``: The clear button is never shown.
- ``SearchBarClearButtonDisplayMode/always``: The clear button is always visible.
- ``SearchBarClearButtonDisplayMode/whileEditing``: The clear button appears only while editing.
- ``SearchBarClearButtonDisplayMode/unlessEditing``: The clear button appears unless editing.

## Properties

- ``SearchBarClearButtonDisplayMode/uiTextFieldViewMode``: Maps to `UITextField.ViewMode` for UIKit integration.

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
