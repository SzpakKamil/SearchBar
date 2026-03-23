# ``SearchBar/SearchBarStyle/rounded``

Rounded `SearchBarStyle`.

@Metadata {
    @DisplayName("Rounded")
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

- Static property using `SearchBarCornerStyle.rounded`.
- Corner radius: 5 (macOS), 10 (iOS/visionOS).
- Applied via `searchBarStyle(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iOS", alt: "Rounded") {
            Rounded
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iPadOS", alt: "Rounded") {
            Rounded
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-macOSTahoe", alt: "Rounded") {
            Rounded
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-visionOS", alt: "Rounded") {
            Rounded
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-tvOS", alt: "Rounded") {
            Rounded
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-watchOS", alt: "Rounded") {
            Rounded
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rectangle``
- ``SearchBarCornerStyle/rounded``
- ``SearchBar``
