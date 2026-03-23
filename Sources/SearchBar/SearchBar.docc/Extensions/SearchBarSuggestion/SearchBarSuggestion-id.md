# ``SearchBar/SearchBarSuggestion/id``

Unique identifier.

@Metadata {
    @DisplayName("Id")
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(macOS, introduced: "15.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Unique `String` identifier.
- Combines `text` and `description`.
- Immutable, set at initialization.
- Satisfies `Identifiable` protocol.

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
