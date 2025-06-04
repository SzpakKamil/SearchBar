# ``SearchBar/SearchBarSuggestion/init(text:description:systemName:token:)``

Creates a new search suggestion with the specified text, description, optional system icon, and an optional `SearchBarToken`.

@Metadata{
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Creates a `SearchBarSuggestion` with a title, optional description, SF Symbol, and embedded `SearchBarToken`.
- Generates unique `id` by combining `text` and `description` (if provided).
- Used for suggestions linked to a specific token in `SearchBar` interfaces.

## Parameters

- `text`: The display title for the suggestion.
- `description`: An optional `String` providing additional context.
- `systemName`: An optional SF Symbol name (e.g., "star.fill", "clock").
- `token`: An optional `SearchBarToken` to associate with the suggestion.

## Example

```swift
let token = SearchBarToken(text: "Favorites", systemName: "star.fill")
let suggestion = SearchBarSuggestion(text: "Favorites", description: "Starred items", systemName: "star.fill", token: token)
let simpleSuggestion = SearchBarSuggestion(text: "Recent", description: nil, systemName: nil, token: nil)
```

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarToken``
- ``SearchBarSuggestion/init(text:description:systemName:)``
