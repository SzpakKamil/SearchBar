# ``SearchBar/SearchBarToken/init(text:systemName:)``

Initializes a `SearchBarToken`.

@Metadata{
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

- Initializes with text and SF Symbol.
- Generates unique `id`.

## Parameters

- `text`: Display text.
- `systemName`: SF Symbol name.

## Example

```swift
let favoritesToken = SearchBarToken(text: "Favorites", systemName: "star.fill")
let recentToken = SearchBarToken(text: "Recent", systemName: "clock")
```

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``
- ``SearchBarToken/id``
