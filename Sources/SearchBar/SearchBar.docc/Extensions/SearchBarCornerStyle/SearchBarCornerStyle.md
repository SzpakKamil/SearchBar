# ``SearchBar/SearchBarCornerStyle``

An enumeration that specifies the corner style of a `SearchBar`.

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

`SearchBarCornerStyle` defines the corner appearance of a `SearchBar`, offering three styles: `capsule`, `rectangle`, or `rounded`. It is used within `SearchBarStyle` to set the corner radius and is applied via the `searchBarStyle(_:)` modifier on macOS, iOS, iPadOS, and visionOS. The `cornerRadius` property provides platform-specific values, such as 22 for `capsule` on visionOS and 5 for `rounded` on macOS.

> Important: This type is unavailable on visionOS.

## Cases

- ``SearchBarCornerStyle/capsule``: A fully rounded, capsule-shaped appearance.
- ``SearchBarCornerStyle/rectangle``: A sharp-edged, rectangle appearance.
- ``SearchBarCornerStyle/rounded``: A softly rounded appearance.

## Properties

- ``SearchBarCornerStyle/cornerRadius``: The corner radius for the style, varying by platform.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style: .rounded)
    }
}
```

## See Also

- ``SearchBar``
- ``SearchBarStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rectangle``
- ``SearchBarCornerStyle/rounded``
