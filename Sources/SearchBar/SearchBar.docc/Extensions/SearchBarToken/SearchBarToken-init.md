# ``SearchBar/SearchBarToken/init(text:systemName:)``

Creates a new search bar token with the specified text and system icon.

@Metadata{
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Creates a `SearchBarToken` with text label and SF Symbols icon.
- Automatically generates unique `id` by combining `text` and `systemName`.
- Primary method for creating search tokens in filtering interfaces.

## Parameters

- `text`: Display text for the token visible to users.
- `systemName`: SF Symbols icon name (e.g., "star", "heart.fill", "person.circle").

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
