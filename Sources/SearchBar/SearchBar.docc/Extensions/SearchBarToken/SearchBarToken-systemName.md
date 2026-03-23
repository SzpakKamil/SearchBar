# ``SearchBar/SearchBarToken/systemName``

System icon name.

@Metadata{
    @DisplayName("SystemName")
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

- `String` specifying SF Symbol.
- Visual representation alongside text.
- Immutable, set at initialization.

## Example

- For `systemName` = "tag", displays the tag SF Symbol.
- For `systemName` = "line.3.horizontal.decrease.circle", shows a filter icon.

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/id``
- ``SearchBarToken/init(text:systemName:)``
