# ``SearchBar/SearchBar/searchBarIconView()``

Removes the custom icon view from the `SearchBar`, setting it to an empty view.

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

The `searchBarIconView()` modifier resets the `SearchBar`’s icon to an empty view, effectively removing any custom icon. Available on iOS, iPadOS, visionOS, and macOS, it’s useful for removing leading icon.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarIconView()
    }
}
```

This example removes the custom icon from the `SearchBar`.

## See Also

- ``SearchBar/SearchBar/searchBarIconView(_:)``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
