# ``SearchBar/SearchBarSuggestion/token``

Optional associated `SearchBarToken`.

@Metadata {
    @DisplayName("Token")
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

- Optional `SearchBarToken`.
- References specific filter token.
- Immutable, set at initialization.

## Example

```swift
let token = SearchBarToken(text: "Favorites", systemName: "star.fill")
let suggestion = SearchBarSuggestion(text: "Favorites", description: "Starred items", systemName: "star.fill", token: token)
// Access token
let associatedToken = suggestion.token // Returns SearchBarToken or nil
```

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/id``
- ``SearchBarToken``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
