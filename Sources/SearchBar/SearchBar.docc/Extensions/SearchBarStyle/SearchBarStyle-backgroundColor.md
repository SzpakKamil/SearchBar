# ``SearchBar/SearchBarStyle/backgroundColor``

The background color of the `SearchBar`.

@Metadata {
    @DisplayName("BackgroundColor")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- A `Color` value setting the `SearchBar`’s background.
- Defaults to `.secondarySystemBackground` on iOS/visionOS or a light/dark-specific color on macOS.
- Setting a custom value sets ``usesCustomBackground`` to `true`.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(backgroundColor: .gray))
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Customize the background color to match your application's theme.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-iOS", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-iOS", alt: "Custom Background") {
                    Custom Background
                }
            }
        }
    }
    @Tab("iPadOS") {
        Set the background color to complement the large screen interface.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-iPadOS", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-iPadOS", alt: "Custom Background") {
                    Custom Background
                }
            }
        }
    }
    @Tab("macOS") {
        Adjust the background color to fit the desktop environment.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-macOSTahoe", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-macOSTahoe", alt: "Custom Background") {
                    Custom Background
                }
            }
        }
    }
    @Tab("visionOS") {
        Choose a background color that enhances visibility in a spatial environment.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-visionOS", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-visionOS", alt: "Custom Background") {
                    Custom Background
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
