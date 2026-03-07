# ``SearchBar/searchBarLookToDictateEnabled(_:)``

Enables or disables the "Look to Dictate" feature for the search bar.

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

The `searchBarLookToDictateEnabled(_:)` modifier controls whether the "Look to Dictate" feature is enabled for the search bar. This feature is particularly relevant for visionOS and compatible iOS devices, allowing users to initiate dictation by looking at the microphone icon in the search field.

> Note: This modifier is only available on iOS 17.0+ and visionOS.

## Parameters

- `value`: A `Bool` indicating whether "Look to Dictate" is enabled.

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

This example enables "Look to Dictate" for the search bar.

## See Also

- ``SearchBar``
