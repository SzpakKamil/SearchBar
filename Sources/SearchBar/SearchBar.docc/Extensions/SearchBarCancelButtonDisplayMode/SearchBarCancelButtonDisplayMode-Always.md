# ``SearchBar/SearchBarCancelButtonDisplayMode/always``

A mode where the cancel button is always visible in the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DisplayName("Always")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` cancel button is always displayed.
- Suitable for interfaces requiring constant access to the cancel action.
- Used with the `searchBarCancelButtonDisplayMode(_:)` modifier.
- Available on iOS 16.0+ and visionOS 1.0+.

> Important: This case is unavailable on macOS.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.always)
    }
}
```

## See Also

- ``SearchBarCancelButtonDisplayMode``
- ``SearchBarCancelButtonDisplayMode/never``
- ``SearchBarCancelButtonDisplayMode/whileEditing``
- ``SearchBar``
