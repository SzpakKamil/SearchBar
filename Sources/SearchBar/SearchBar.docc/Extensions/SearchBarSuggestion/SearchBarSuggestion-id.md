# ``SearchBar/SearchBarSuggestion/id``

The unique identifier for a `SearchBarSuggestion`, derived from its `text` and `description`.

@Metadata {
    @DisplayName("Id")
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

- `id` is a `String` uniquely identifying a `SearchBarSuggestion`.
- Combines `text` and `description` (e.g., `textdescription`).
- Immutable, set at initialization.
- Fulfills `Identifiable` protocol for suggestion management in `SearchBar`.

## Example

- For `text` = "Favorites" and `description` = "Starred items", `id` = "FavoritesStarred items".
- For `text` = "Recent" and `description` = nil, `id` = "Recent".

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/init(text:description:systemName:)``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
