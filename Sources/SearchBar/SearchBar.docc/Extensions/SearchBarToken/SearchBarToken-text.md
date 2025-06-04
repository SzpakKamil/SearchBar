# ``SearchBar/SearchBarToken/text``

The display title for a `SearchBarToken`, shown in the `SearchBar` interface.

@Metadata{
    @DisplayName("Text")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- `text` is a `String` defining the display title of a `SearchBarToken`.
- Represents the visible label in the `SearchBar` interface.
- Immutable, set at initialization.
- Works with `systemName` for clear token representation in filtering and suggestions.

## Example

- For `text` = "Filter", displays "Filter" as the token's label.
- For `text` = "Category", shows "Category" in the `SearchBar`.

## See Also

- ``SearchBarToken``
- ``SearchBarToken/systemName``
- ``SearchBarToken/id``
- ``SearchBarToken/init(text:systemName:)``
