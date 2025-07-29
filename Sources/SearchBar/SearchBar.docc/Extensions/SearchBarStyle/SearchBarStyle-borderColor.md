# ``SearchBar/SearchBarStyle/borderColor``

The color of the `SearchBar`’s border, available on all platforms with visual effect only on macOS.

@Metadata {
    @DisplayName("BorderColor")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- A `Color` value defining the border color of the `SearchBar`, applicable on iOS, iPadOS, macOS, and visionOS.
- Set via the `searchBarStyle(_:borderColor:textColor:tint:backgroundColor:)` modifier or directly in `SearchBarStyle`.
- If `nil`, uses the system default border color.

>Note:Visual changes are only reflected on macOS due to platform-specific rendering; other platforms accept the property to simplify cross-platform modifier consistency, particularly for visionOS styling, but do not display border color changes.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded, borderColor: .red, textColor: .blue, tint: .purple, backgroundColor: .gray)
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
