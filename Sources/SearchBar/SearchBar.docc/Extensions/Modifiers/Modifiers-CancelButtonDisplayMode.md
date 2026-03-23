# ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``

Configures cancel button visibility.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "12.0")
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

`searchBarCancelButtonDisplayMode(_:)` controls cancel button visibility. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `mode`: A `SearchBarCancelButtonDisplayMode` value (e.g., `.always`, `.whileEditing`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCancelButtonDisplayMode(.always)
    }
}
```

This makes the cancel button always visible.

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

## See Also

- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``
