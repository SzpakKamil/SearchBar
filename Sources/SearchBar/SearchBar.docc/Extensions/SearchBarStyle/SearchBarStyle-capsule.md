# ``SearchBar/SearchBarStyle/capsule``

Capsule `SearchBarStyle`.

@Metadata {
    @DisplayName("Capsule")
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

- Static property using `SearchBarCornerStyle.capsule`.
- Corner radius: 18 (iOS/macOS), 22 (visionOS).
- Applied via `searchBarStyle(_:)`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.capsule)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("iPadOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iPadOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("macOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-macOSTahoe", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("visionOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-visionOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("tvOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-tvOS", alt: "Capsule") {
            Capsule
        }
    }
    @Tab("watchOS") {
        @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-watchOS", alt: "Capsule") {
            Capsule
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/rectangle``
- ``SearchBarStyle/rounded``
- ``SearchBarCornerStyle/capsule``
- ``SearchBar``
