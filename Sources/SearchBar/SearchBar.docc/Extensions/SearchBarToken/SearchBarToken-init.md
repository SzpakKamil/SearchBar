# ``SearchBar/SearchBarToken/init(text:systemName:)``

Creates a new search bar token with the specified text and system icon.

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
