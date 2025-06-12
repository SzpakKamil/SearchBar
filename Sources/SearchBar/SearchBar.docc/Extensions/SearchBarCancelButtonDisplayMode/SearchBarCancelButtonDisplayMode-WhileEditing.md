# ``SearchBar/SearchBarCancelButtonDisplayMode/whileEditing``

A mode where the cancel button is shown in the `SearchBar` only while editing.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @DisplayName("While Editing")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` cancel button appears only during text editing.
- Suitable for interfaces where the cancel button is relevant only when active.
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
            .searchBarCancelButtonDisplayMode(.whileEditing)
    }
}
```

## See Also

- ``SearchBarCancelButtonDisplayMode``
- ``SearchBarCancelButtonDisplayMode/never``
- ``SearchBarCancelButtonDisplayMode/always``
- ``SearchBar``
