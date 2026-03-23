# ``SearchBar/SearchBarClearButtonDisplayMode/always``

Clear button always visible.

@Metadata {
    @DisplayName("Always")
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

- Clear button always displayed.
- Use with `searchBarClearButtonDisplayMode(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.always)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-iOS", alt: "Always") {
            Always
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-iPadOS", alt: "Always") {
            Always
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-macOSTahoe", alt: "Always") {
            Always
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-visionOS", alt: "Always") {
            Always
        }
    }
}

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/whileEditing``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
