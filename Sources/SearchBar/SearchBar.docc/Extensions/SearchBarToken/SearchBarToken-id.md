# ``SearchBar/SearchBarToken/id``

Unique token identifier.

@Metadata{
    @DisplayName("Id")
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

- Unique `String` identifier.
- Combines `text` and `systemName`.
- Immutable, set at initialization.
- Satisfies `Identifiable` protocol.

## Example

- For `text` = "Filter" and `systemName` = "tag", `id` = "Filtertag".
- For `text` = "Category" and `systemName` = "list.bullet", `id` = "Categorylist.bullet".

## See Also

- ``SearchBarToken``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``
- ``SearchBarToken/init(text:systemName:)``
