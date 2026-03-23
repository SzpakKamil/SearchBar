# ``SearchBar/SearchBarSuggestion/text``

Display title.

@Metadata {
    @DisplayName("Text")
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

- `String` defining display title.
- Primary label.
- Immutable, set at initialization.

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
