# ``SearchBar/SearchBarCancelButtonDisplayMode/never``

A mode where the cancel button is never shown in the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DisplayName("Never")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` cancel button is never displayed.
- Suitable for interfaces where canceling is handled differently.
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
            .searchBarCancelButtonDisplayMode(.never)
    }
}
```

## See Also

- ``SearchBarCancelButtonDisplayMode``
- ``SearchBarCancelButtonDisplayMode/always``
- ``SearchBarCancelButtonDisplayMode/whileEditing``
- ``SearchBar``
