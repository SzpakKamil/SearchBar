# ``SearchBar/SearchBarToken/searchToken``

`UISearchToken` representation.

@Metadata{
    @DisplayName("SearchToken")
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Provides `UISearchToken` for UIKit integration.
- Maps properties to UIKit equivalent.
- Stores `id` in `representedObject`.
- Available on iOS and visionOS.
- Requires `MainActor` for thread-safe UI operations.

## Example

```swift
let token = SearchBarToken(text: "Favorites", systemName: "star.fill")
#if !os(macOS)
let uiToken = token.searchToken // Creates UISearchToken with "Favorites" and star icon
#endif
```

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``
- ``SearchBarToken/id``
