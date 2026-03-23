# ``SearchBar/SearchBarStyle/rectangle``

Rectangular `SearchBarStyle`.

@Metadata {
    @DisplayName("Rectangle")
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Static property using `SearchBarCornerStyle.rectangle`.
- Corner radius: 0.
- Applied via `searchBarStyle(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rectangle)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iPadOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-macOSTahoe", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-visionOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-tvOS", alt: "Rectangle") {
            Rectangle
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-watchOS", alt: "Rectangle") {
            Rectangle
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rounded``
- ``SearchBarCornerStyle/rectangle``
- ``SearchBar``
