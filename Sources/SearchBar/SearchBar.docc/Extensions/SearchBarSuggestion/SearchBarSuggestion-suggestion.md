# ``SearchBar/SearchBarSuggestion/suggestion``

A `UISearchSuggestionItem` representation of the `SearchBarSuggestion` for UIKit search interfaces.

@Metadata {
    @DisplayName("Suggestion")
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

- Provides a `UISearchSuggestionItem` for integrating `SearchBarSuggestion` with UIKit search bars.
- Uses `text` for the suggestion title, `description` for additional context, and `systemName` for an optional SF Symbol.
- Available on iOS 16.0+ and visionOS 1.0+, unavailable on macOS.
- Requires `MainActor` for thread-safe UI operations.

## Example

```swift
let suggestion = SearchBarSuggestion(text: "Favorites", description: "Starred items", systemName: "star.fill")
#if !os(macOS)
let uiSuggestion = suggestion.suggestion // Creates UISearchSuggestionItem with "Favorites" and star icon
#endif
```

## See Also

- ``SearchBarSuggestion``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``
- ``SearchBarSuggestion/id``
- ``SearchBarToken``
