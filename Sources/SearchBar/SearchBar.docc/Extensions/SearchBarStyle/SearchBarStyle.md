# ``SearchBarStyle``

A struct that defines the visual appearance and color configuration for a `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(macOS, introduced: "11.0")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarStyle` is a core component of the `SearchBar` package, used to customize the appearance of a `SearchBar` by configuring its corner radius, text color, tint color, token background color, and background color. It integrates with `SearchBar` via the `searchBarStyle(_:)` modifier, supporting predefined styles through static properties (`capsule`, `rectangle`, `rounded`) or custom configurations via initializers. Available on macOS, iOS, and visionOS, with some properties limited to non-macOS platforms.

## Support

Below is an example of a struct using `SearchBarStyle`:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    let style = SearchBarStyle(style: .capsule, textColor: .black, tint: .blue, backgroundColor: .gray)
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style)
    }
}
```

## Conformances

### Equatable
- Allows comparison of `SearchBarStyle` instances based on `cornerRadius`, `backgroundColor`, `tintColor`, and `textColor`.
- Enables equality checks for style consistency in SwiftUI views.
- Supports use in collections requiring equality comparisons.

## Topics

### Properties
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarStyle/backgroundColor``

### Initializers
- ``SearchBarStyle/init(cornerRadius:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(style:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarStyle/init(style:textColor:tint:tokenBackground:backgroundColor:)``

### Static Properties
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rectangle``
- ``SearchBarStyle/rounded``

## See Also

- ``SearchBar``
- ``SearchBarCornerStyle``
