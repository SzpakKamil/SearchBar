# ``SearchBar/SearchBarSuggestion/description``

The optional description text for a `SearchBarSuggestion`, providing additional context.

@Metadata {
    @DisplayName("Description")
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

- `description` is an optional `String` providing context for a `SearchBarSuggestion`.
- Displayed in the `SearchBar` suggestion interface to clarify the suggestion.
- Immutable, set at initialization.
- Enhances user understanding of suggestions in filtering interfaces.

## Example

- For `description` = "Starred items", shows "Starred items" below the suggestion text.
- For `description` = nil, no additional context is displayed.

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarSuggestion/init(text:description:systemName:)``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
