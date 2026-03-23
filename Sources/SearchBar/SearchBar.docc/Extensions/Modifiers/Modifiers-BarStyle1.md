# ``SearchBar/SearchBar/searchBarStyle(_:)``

Applies a custom style to `SearchBar`.

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

`searchBarStyle(_:)` applies a `SearchBarStyle` to customize appearance. Supported on iOS, iPadOS, visionOS, and macOS.

Use static styles like `.capsule` or create a custom `SearchBarStyle`.

## Parameters

- `style`: A `SearchBarStyle` instance.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.capsule)
    }
}
```

This styles `SearchBar` with a capsule shape.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
