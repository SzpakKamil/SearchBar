# ``SearchBar/SearchBarClearButtonDisplayMode/whileEditing``

A mode where the clear button is shown in the `SearchBar` only while editing.

@Metadata {
    @DisplayName("WhileEditing")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Specifies that the `SearchBar` clear button appears only during text editing.
- Suitable for interfaces where the clear button is relevant only when active.
- Used with the `searchBarClearButtonDisplayMode(_:)` modifier.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.whileEditing)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-iOS", alt: "While Editing") {
            While Editing
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-iPadOS", alt: "While Editing") {
            While Editing
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-macOSTahoe", alt: "While Editing") {
            While Editing
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-visionOS", alt: "While Editing") {
            While Editing
        }
    }
}

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/always``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
