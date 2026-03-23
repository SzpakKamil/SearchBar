# ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``

Controls text input autocorrection.

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

`searchBarAutoCorrectionType(_:)` configures autocorrection. Supported on iOS (14.0+) and visionOS (1.0+). Defaults to `.default`.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocorrectionType` value. Defaults to `.default`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarAutoCorrectionType(.no)
    }
}
```

This disables autocorrection.

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Enabled-iOS", alt: "Autocorrection Enabled") {
                    Autocorrection Enabled
                }
            }
            @Tab("Disabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Disabled-iOS", alt: "Autocorrection Disabled") {
                    Autocorrection Disabled
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Enabled-iPadOS", alt: "Autocorrection Enabled") {
                    Autocorrection Enabled
                }
            }
            @Tab("Disabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Disabled-iPadOS", alt: "Autocorrection Disabled") {
                    Autocorrection Disabled
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Enabled-visionOS", alt: "Autocorrection Enabled") {
                    Autocorrection Enabled
                }
            }
            @Tab("Disabled") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCorrectionType-Disabled-visionOS", alt: "Autocorrection Disabled") {
                    Autocorrection Disabled
                }
            }
        }
    }
}

## See Also

- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
