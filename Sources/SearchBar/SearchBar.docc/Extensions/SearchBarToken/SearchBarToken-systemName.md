# ``SearchBar/SearchBarToken/systemName``

The system icon name for a `SearchBarToken`, used to display an associated SF Symbol.

@Metadata{
    @DisplayName("SystemName")
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

- `systemName` is a `String` specifying the SF Symbol for a `SearchBarToken`.
- Pairs with `text` for visual representation in `SearchBar`.
- Immutable, set at initialization.
- Enhances token appearance in filtering and suggestion features.

## Example

- For `systemName` = "tag", displays the tag SF Symbol.
- For `systemName` = "line.3.horizontal.decrease.circle", shows a filter icon.

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/id``
- ``SearchBarToken/init(text:systemName:)``
