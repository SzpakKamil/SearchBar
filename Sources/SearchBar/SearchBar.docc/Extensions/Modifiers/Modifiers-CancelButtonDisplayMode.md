# ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``

Configures the display behavior of the cancel button in the `SearchBar`.

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

The `searchBarCancelButtonDisplayMode(_:)` modifier determines when the cancel button is visible in the `SearchBar`. Available on iOS and visionOS, it supports modes like always visible or visible only while editing.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `mode`: A `SearchBarCancelButtonDisplayMode` specifying the display behavior (e.g., `.always`, `.whileEditing`).

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

This example ensures the cancel button is always visible.

@TabNavigator {
    @Tab("iOS") {
        Configure the cancel button's appearance to improve usability.

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
        Adjust how the cancel button is shown to suit larger layouts.

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
