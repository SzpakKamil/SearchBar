# ``SearchBar/SearchBar/searchBarIconView(_:)``

Sets a custom icon view.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`searchBarIconView(_:)` sets a custom SwiftUI view as the icon. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `view`: A closure returning a SwiftUI `View`.

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

This sets a magnifying glass icon.

## See Also

- ``SearchBar/SearchBar/searchBarIconView()``
- ``SearchBar/SearchBar/searchBarStyle(_:)``
