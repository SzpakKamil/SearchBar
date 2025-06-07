# ``SearchBar/SearchBar/searchBarStyle(_:)``

Applies a custom style to the `SearchBar` to configure its visual appearance.

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

The `searchBarStyle(_:)` modifier applies a predefined `SearchBarStyle` to customize the `SearchBar`’s appearance, such as corner radius, text color, and background. Available on iOS, iPadOS, visionOS, and macOS, this modifier provides a simple way to match the search bar to your app’s design.

Use static styles like `.capsule` or create a custom `SearchBarStyle` for detailed control.

## Parameters

- `style`: A `SearchBarStyle` instance defining the visual configuration.

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

This example styles the `SearchBar` with a capsule shape, featuring a high corner radius.

## See Also

- ``SearchBarStyle``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)``
