# ``SearchBar/SearchBarCancelButtonDisplayMode/never``

Cancel button never visible.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DisplayName("Never")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Cancel button never displayed.
- Use with `searchBarCancelButtonDisplayMode(_:)`.
- Available on iOS 16.0+ and visionOS 1.0+.

> Important: This case is unavailable on macOS.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.never)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Never-iOS", alt: "Never") {
            Never
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Never-iPadOS", alt: "Never") {
            Never
        }
    }
}

## See Also

- ``SearchBarCancelButtonDisplayMode``
- ``SearchBarCancelButtonDisplayMode/always``
- ``SearchBarCancelButtonDisplayMode/whileEditing``
- ``SearchBar``
