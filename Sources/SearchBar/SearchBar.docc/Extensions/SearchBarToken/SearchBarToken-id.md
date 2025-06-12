# ``SearchBar/SearchBarToken/id``

The unique identifier for a `SearchBarToken`, derived from its `text` and `systemName`.

@Metadata{
    @DisplayName("Id")
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- `id` is a `String` uniquely identifying a `SearchBarToken`.
- Combines `text` and `systemName` (e.g., `textsystemName`).
- Immutable, set at initialization.
- Fulfills `Identifiable` protocol for token management in `SearchBar` filtering and suggestions.

## Example

- For `text` = "Filter" and `systemName` = "tag", `id` = "Filtertag".
- For `text` = "Category" and `systemName` = "list.bullet", `id` = "Categorylist.bullet".

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``
- ``SearchBarToken/init(text:systemName:)``

