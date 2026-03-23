# ``SearchBar/SearchBarStyle/backgroundColor``

`SearchBar` background color.

@Metadata {
    @DisplayName("BackgroundColor")
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

- `Color` value for background.
- Defaults to platform-specific system color.
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
    @Tab("tvOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-tvOS", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-tvOS", alt: "Custom Background") {
                    Custom Background
                }
            }
        }
    }
    @Tab("watchOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Default-watchOS", alt: "Default Background") {
                    Default Background
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-BackgroundColor-Custom-watchOS", alt: "Custom Background") {
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
