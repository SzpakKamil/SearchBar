# ``SearchBar/SearchBarToken/searchToken``

A `UISearchToken` representation of the `SearchBarToken` for use in UIKit search interfaces.

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Provides a `UISearchToken` for integrating `SearchBarToken` with UIKit search bars.
- Uses `text` for the token's label and `systemName` for its SF Symbol icon.
- Stores `id` in `representedObject` for identification.
- Available on iOS and visionOS, unavailable on macOS and tvOS.
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
