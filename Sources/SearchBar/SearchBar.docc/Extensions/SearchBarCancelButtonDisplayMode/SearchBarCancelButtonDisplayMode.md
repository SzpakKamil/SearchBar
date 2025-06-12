# ``SearchBar/SearchBarCancelButtonDisplayMode``

An enumeration that specifies when the cancel button is displayed in a `SearchBar`.

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

`SearchBarCancelButtonDisplayMode` controls the visibility of the cancel button in a `SearchBar`, offering three modes: `never`, `always`, or `whileEditing`. It is used with the `searchBarCancelButtonDisplayMode(_:)` modifier to configure the `SearchBar`’s behavior on iOS 16.0+ and visionOS 1.0+.

> Important: This type is unavailable on macOS.

## Cases

- ``SearchBarCancelButtonDisplayMode/never``: The cancel button is never shown.
- ``SearchBarCancelButtonDisplayMode/always``: The cancel button is always visible.
- ``SearchBarCancelButtonDisplayMode/whileEditing``: The cancel button appears only while editing.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.whileEditing)
    }
}
```
