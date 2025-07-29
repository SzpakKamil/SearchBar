# ``SearchBar/SearchBarStyle/init(style:borderColor:textColor:tint:backgroundColor:)``

Creates a `SearchBarStyle` with a `SearchBarCornerStyle` and optional colors.

@Metadata {
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

- Initializes a `SearchBarStyle` using a `SearchBarCornerStyle` for `cornerRadius`.
- Accepts optional `textColor`, `tint`, and `backgroundColor` parameters.
- Sets `tokenBackground` to `nil`.

## Parameters

- `style`: A `SearchBarCornerStyle` defining the corner shape.
- `borderColor`: An optional `Color` for the search bar’s border. If `nil`, uses the system default (Only appears on macOS).
- `textColor`: An optional `Color` for the text.
- `tint`: An optional `Color` for interactive elements.
- `backgroundColor`: An optional `Color` for the background.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(style: .capsule, textColor: .red, tint: .blue, backgroundColor: .gray))
    }
}
```

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarStyle/init(style:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarCornerStyle``
