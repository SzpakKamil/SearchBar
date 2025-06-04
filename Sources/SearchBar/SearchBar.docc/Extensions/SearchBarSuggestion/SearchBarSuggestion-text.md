# ``SearchBar/SearchBarSuggestion/text``

The display title for a `SearchBarSuggestion`, shown in the `SearchBar` interface.

@Metadata {
    @DisplayName("Text")
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

- `text` is a `String` defining the display title of a `SearchBarSuggestion`.
- Represents the primary label shown in the `SearchBar` suggestion interface.
- Immutable, set at initialization.
- Used for user-facing suggestion text in filtering interfaces.

## Example

- For `text` = "Favorites", displays "Favorites" as the suggestion’s title.
- For `text` = "Recent", shows "Recent" in the `SearchBar`.

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarSuggestion/init(text:description:systemName:)``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
