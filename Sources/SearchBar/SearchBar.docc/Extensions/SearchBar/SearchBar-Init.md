# ``SearchBar/SearchBar/init(text:prompt:)``

Initializes a `SearchBar`.

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

`init(text:prompt:)` creates a `SearchBar` bound to user input. Available on iOS (14.0+), visionOS (1.0+), and macOS (11.0+).

The prompt appears as the placeholder text.

## Parameters

- `text`: A `Binding<String>` for search text.
- `prompt`: Optional placeholder `String`. Defaults to `nil`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText, prompt: "Search items")
            .searchBarStyle(.rounded)
    }
}
```

This initializes `SearchBar` with a prompt.

## See Also

- <doc:Modifiers>
