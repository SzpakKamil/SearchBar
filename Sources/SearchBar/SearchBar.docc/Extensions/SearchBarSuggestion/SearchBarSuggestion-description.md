# ``SearchBar/SearchBarSuggestion/description``

Optional description text.

@Metadata {
    @DisplayName("Description")
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

- Optional `String` providing context.
- Displayed in suggestion interface.
- Immutable, set at initialization.

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
