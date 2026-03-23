# ``SearchBar/SearchBarSuggestion/suggestion``

`UISearchSuggestionItem` representation.

@Metadata {
    @DisplayName("Suggestion")
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

- Provides `UISearchSuggestionItem` for UIKit integration.
- Maps properties to UIKit equivalent.
- Available on iOS 16.0+, visionOS 1.0+.
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
