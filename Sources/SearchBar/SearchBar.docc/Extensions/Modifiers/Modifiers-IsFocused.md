# ``SearchBar/SearchBar/searchBarIsFocused(_:)``

Binds focus state.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "12.0")
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

`searchBarIsFocused(_:)` controls focus state via `Binding<Bool>`. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `value`: A `Binding<Bool>` for focus state.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var isFocused = false
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .searchBarIsFocused($isFocused)
            Button("Focus Search Bar") {
                isFocused = true
            }
        }
    }
}
```

This focuses `SearchBar` on button press.

## See Also

- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``
