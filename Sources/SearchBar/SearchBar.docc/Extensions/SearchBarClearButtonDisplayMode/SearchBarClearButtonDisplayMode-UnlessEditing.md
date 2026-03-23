# ``SearchBar/SearchBarClearButtonDisplayMode/unlessEditing``

Clear button visible unless editing.

@Metadata {
    @DisplayName("UnlessEditing")
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

- Clear button appears when not editing.
- Use with `searchBarClearButtonDisplayMode(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.unlessEditing)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-iOS", alt: "Unless Editing") {
            Unless Editing
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-iPadOS", alt: "Unless Editing") {
            Unless Editing
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-macOSTahoe", alt: "Unless Editing") {
            Unless Editing
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-visionOS", alt: "Unless Editing") {
            Unless Editing
        }
    }
}

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/always``
- ``SearchBarClearButtonDisplayMode/whileEditing``
- ``SearchBar``
