# ``SearchBar/SearchBarStyle/tokenBackground``

`SearchBar` token background.

@Metadata {
    @DisplayName("TokenBackground")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Optional `Color` for token backgrounds.
- `nil` uses system default.
- Platform-specific availability (iOS/visionOS).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(tokenBackground: .blue))
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Default-iOS", alt: "Default Token Background") {
                    Default Token Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Custom-iOS", alt: "Custom Token Background") {
                    Custom Token Background
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Default-iPadOS", alt: "Default Token Background") {
                    Default Token Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Custom-iPadOS", alt: "Custom Token Background") {
                    Custom Token Background
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Default-visionOS", alt: "Default Token Background") {
                    Default Token Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TokenBackground-Custom-visionOS", alt: "Custom Token Background") {
                    Custom Token Background
                }
            }
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarToken``
