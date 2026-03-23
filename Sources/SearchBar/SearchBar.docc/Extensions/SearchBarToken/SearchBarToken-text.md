# ``SearchBar/SearchBarToken/text``

Token display title.

@Metadata{
    @DisplayName("Text")
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

- `String` defining display title.
- Visible label.
- Immutable, set at initialization.

## Example

- For `text` = "Filter", displays "Filter" as the token's label.
- For `text` = "Category", shows "Category" in the `SearchBar`.

## See Also

- ``SearchBarToken``
- ``SearchBarToken/systemName``
- ``SearchBarToken/id``
- ``SearchBarToken/init(text:systemName:)``
