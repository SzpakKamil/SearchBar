# ``SearchBar/SearchBarSuggestion/init(text:description:systemName:)``

Creates a new search suggestion with the specified text, description, and optional system icon.

@Metadata{
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(macOS, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Creates a `SearchBarSuggestion` with a title, optional description, and SF Symbol.
- Generates unique `id` by combining `text` and `description` (if provided).
- Used for standalone suggestions in `SearchBar` interfaces.

## Parameters

- `text`: The display title for the suggestion.
- `description`: An optional `String` providing additional context.
- `systemName`: An optional SF Symbol name (e.g., "star.fill", "clock").

## Example

```swift
let suggestion = SearchBarSuggestion(text: "Favorites", description: "Starred items", systemName: "star.fill")
let recentSuggestion = SearchBarSuggestion(text: "Recent", description: nil, systemName: "clock")
```

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/id``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
