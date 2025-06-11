# ``SearchBar/SearchBar/init(text:prompt:)``

Initializes a `SearchBar` with a binding to the search text and an optional prompt.

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

The `init(text:prompt:)` initializer creates a `SearchBar` instance, binding it to a string that holds the user’s search input. An optional prompt can be provided to display placeholder text, guiding the user on what to search for. This initializer is available on iOS (14.0+), visionOS (1.0+), and macOS (11.0+).

On iOS and visionOS, the prompt is displayed as the placeholder in the underlying `UISearchBar`. On macOS, it is used as the placeholder for the `TextField` (or `SearchFieldView` if macOS 12.0+ is available).

## Parameters

- `text`: A `Binding<String>` that holds the search text entered by the user.
- `prompt`: An optional `String` to display as a placeholder when the search bar is empty. Defaults to `nil`.

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

This example initializes a `SearchBar` with a placeholder prompt and applies a rounded style.

## See Also

- <doc:Modifiers>
