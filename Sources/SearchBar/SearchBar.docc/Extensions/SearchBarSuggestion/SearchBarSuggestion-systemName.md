# ``SearchBar/SearchBarSuggestion/systemName``

Optional SF Symbol name.

@Metadata {
    @DisplayName("SystemName")
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

- Optional `String` specifying SF Symbol.
- Visual representation alongside text.
- Immutable, set at initialization.

## Example

- For `systemName` = "star.fill", displays the star SF Symbol.
- For `systemName` = nil, no icon is shown in the suggestion.

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarSuggestion/init(text:description:systemName:)``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
