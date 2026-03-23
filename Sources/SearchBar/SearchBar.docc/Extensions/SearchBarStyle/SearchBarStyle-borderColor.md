# ``SearchBar/SearchBarStyle/borderColor``

`SearchBar` border color (macOS visual only).

@Metadata {
    @DisplayName("BorderColor")
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

- `Color` value for border. Available cross-platform.
- Set via `searchBarStyle(...)` or `SearchBarStyle`.
- `nil` uses system default.

>Note:Visual effect limited to macOS. Other platforms ignore the value for consistent API usage.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded, borderColor: .red, textColor: .blue, tint: .purple, backgroundColor: .gray)
    }
}
```

@TabNavigator {
    @Tab("macOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Default-macOSTahoe", alt: "Default Border Color") {
                    Default Border Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Custom-macOSTahoe", alt: "Custom Border Color") {
                    Custom Border Color
                }
            }
        }
    }
    @Tab("tvOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Default-tvOS", alt: "Default Border Color") {
                    Default Border Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Custom-tvOS", alt: "Custom Border Color") {
                    Custom Border Color
                }
            }
        }
    }
    @Tab("watchOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Default-watchOS", alt: "Default Border Color") {
                    Default Border Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BorderColor-Custom-watchOS", alt: "Custom Border Color") {
                    Custom Border Color
                }
            }
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
