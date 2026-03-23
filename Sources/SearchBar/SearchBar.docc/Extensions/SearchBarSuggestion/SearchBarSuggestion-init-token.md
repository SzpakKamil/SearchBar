# ``SearchBar/SearchBarSuggestion/init(text:description:systemName:token:)``

Initializes suggestion with token.

@Metadata{
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Initializes with title, description, symbol, and `SearchBarToken`.
- Generates unique `id`.

## Parameters

- `text`: Display title.
- `description`: Optional description.
- `systemName`: Optional SF Symbol name.
- `token`: Optional associated `SearchBarToken`.

## Example

```swift
let token = SearchBarToken(text: "Favorites", systemName: "star.fill")
let suggestion = SearchBarSuggestion(text: "Favorites", description: "Starred items", systemName: "star.fill", token: token)
let simpleSuggestion = SearchBarSuggestion(text: "Recent", description: nil, systemName: nil, token: nil)
```

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarToken``
- ``SearchBarSuggestion/init(text:description:systemName:)``
