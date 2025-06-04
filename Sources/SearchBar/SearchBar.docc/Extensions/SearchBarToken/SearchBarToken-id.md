# ``SearchBar/SearchBarToken/id``

The unique identifier for a `SearchBarToken`, derived from its `text` and `systemName`.

@Metadata{
    @DisplayName("Id")
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

