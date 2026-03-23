# ``SearchBar/SearchBarCancelButtonDisplayMode``

Enumeration for cancel button visibility.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarCancelButtonDisplayMode` controls cancel button visibility (`never`, `always`, `whileEditing`). Used with `searchBarCancelButtonDisplayMode(_:)` on iOS 16.0+ and visionOS 1.0+.

> Important: This type is unavailable on macOS.

## Cases

- ``SearchBarCancelButtonDisplayMode/never``: Cancel button never shown.
- ``SearchBarCancelButtonDisplayMode/always``: Cancel button always visible.
- ``SearchBarCancelButtonDisplayMode/whileEditing``: Cancel button appears while editing.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.whileEditing)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Always-iOS", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-WhileEditing-iOS", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Never-iOS", alt: "Never") {
                    Never
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Always-iPadOS", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-WhileEditing-iPadOS", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-CancelButton-Never-iPadOS", alt: "Never") {
                    Never
                }
            }
        }
    }
}
