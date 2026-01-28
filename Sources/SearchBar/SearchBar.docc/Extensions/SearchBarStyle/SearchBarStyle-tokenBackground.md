# ``SearchBar/SearchBarStyle/tokenBackground``

The background color for tokens in the `SearchBar`.

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

- An optional `Color` value for the background of tokens in the `SearchBar`.
- If `nil`, uses the system default token background.
- Unavailable due to platform-specific token rendering.

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
        Customize the background color of tokens to improve their visual distinction.

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
        Set the token background color to match your app's token styling.

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
        Configure token background colors for better legibility in spatial layouts.

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
