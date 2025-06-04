# ``SearchBar/SearchBarSuggestion/token``

The optional `SearchBarToken` associated with a `SearchBarSuggestion`.

@Metadata {
    @DisplayName("Token")
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

- `token` is an optional `SearchBarToken` linked to a `SearchBarSuggestion`.
- Enables suggestions to reference a specific filter token in `SearchBar`.
- Immutable, set at initialization.
- Enhances suggestion functionality by connecting to token-based filtering.

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
