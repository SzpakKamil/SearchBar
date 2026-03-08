# ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``

Controls the autocorrection behavior of the `SearchBar`’s text input.

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

The `searchBarAutoCorrectionType(_:)` modifier configures whether the `SearchBar`’s text input should use autocorrection. Available on iOS (14.0+) and visionOS (1.0+), it defaults to `.default`, which typically enables autocorrection unless overridden.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocorrectionType` specifying the autocorrection behavior, defaulting to `.default`.

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

This example disables autocorrection to prevent automatic text changes.

@TabNavigator {
    @Tab("iOS") {
        Configure the autocorrection behavior to optimize text input.

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
        Adjust the autocorrection behavior for a more personalized experience.

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
        Customize the autocorrection for improved text entry accuracy.

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
