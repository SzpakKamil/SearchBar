# ``SearchBar/SearchBarStyle/tintColor``

The accent color for interactive elements in the `SearchBar`.

@Metadata {
    @DisplayName("TintColor")
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

- An optional `Color` value for interactive elements like buttons or cursors.
- If `nil`, uses the system default tint.
- Applied via `SearchBarStyle` initializers.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(tint: .blue))
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Apply a tint color to highlight interactive elements.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-iOS", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-iOS", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
    @Tab("iPadOS") {
        Use tint colors to draw attention to search actions and focus.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-iPadOS", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-iPadOS", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
    @Tab("macOS") {
        Set the tint color to align with the system accent or your app's brand.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-macOSTahoe", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-macOSTahoe", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
    @Tab("visionOS") {
        Configure the tint color for clear interactive cues in spatial computing.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-visionOS", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-visionOS", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
    @Tab("tvOS") {
        Apply a tint color to highlight interactive elements on tvOS.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-tvOS", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-tvOS", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
    @Tab("watchOS") {
        Use tint colors to draw attention to search actions on the watch.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Default-watchOS", alt: "Default Tint Color") {
                    Default Tint Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TintColor-Custom-watchOS", alt: "Custom Tint Color") {
                    Custom Tint Color
                }
            }
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
