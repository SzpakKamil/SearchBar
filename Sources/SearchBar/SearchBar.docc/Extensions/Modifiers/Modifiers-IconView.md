# ``SearchBar/SearchBar/searchBarIconView(_:)``

Sets a custom icon view for the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `searchBarIconView(_:)` modifier allows you to set a custom SwiftUI view as the icon for the `SearchBar`. Available on iOS, visionOS, and macOS, the icon is styled with a secondary foreground color for consistency.

## Parameters

- `view`: A closure returning a SwiftUI `View` to use as the icon.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarIconView {
                Image(systemName: "magnifyingglass")
            }
    }
}
```

This example sets a magnifying glass as the search bar’s icon.

## See Also

- ``SearchBar/SearchBar/searchBarIconView()``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
