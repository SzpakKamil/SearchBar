# ``SearchBar/SearchBar/searchBarLookToDictateEnabled(_:)``

Controls "Look to Dictate".

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
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

`searchBarLookToDictateEnabled(_:)` controls the "Look to Dictate" feature. Supported on iOS 17.0+ and visionOS.

## Parameters

- `value`: `Bool` enabling "Look to Dictate".

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarLookToDictateEnabled(true)
    }
}
```

This enables "Look to Dictate".

## See Also

- ``SearchBar``
