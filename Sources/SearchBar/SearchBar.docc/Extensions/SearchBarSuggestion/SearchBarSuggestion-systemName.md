# ``SearchBar/SearchBarSuggestion/systemName``

The optional system icon name for a `SearchBarSuggestion`, used to display an associated SF Symbol.

@Metadata {
    @DisplayName("SystemName")
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(macOS, introduced: "15.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- `systemName` is an optional `String` specifying the SF Symbol for a `SearchBarSuggestion`.
- Pairs with `text` and `description` for visual representation in `SearchBar`.
- Immutable, set at initialization.
- Enhances suggestion appearance in UIKit search interfaces.

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
