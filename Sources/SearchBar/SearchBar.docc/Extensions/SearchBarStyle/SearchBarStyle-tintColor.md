# ``SearchBar/SearchBarStyle/tintColor``

`SearchBar` tint color.

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

- Optional `Color` for interactive elements.
- `nil` uses system default.
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
