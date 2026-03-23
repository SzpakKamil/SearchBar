# ``SearchBar/SearchBarStyle/textColor``

`SearchBar` text color.

@Metadata {
    @DisplayName("TextColor")
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

- Optional `Color` for input text.
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
            .searchBarStyle(SearchBarStyle(textColor: .red))
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-iOS", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-iOS", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-iPadOS", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-iPadOS", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
    @Tab("macOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-macOSTahoe", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-macOSTahoe", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-visionOS", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-visionOS", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
    @Tab("tvOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-tvOS", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-tvOS", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
    @Tab("watchOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Default-watchOS", alt: "Default Text Color") {
                    Default Text Color
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-TextColor-Custom-watchOS", alt: "Custom Text Color") {
                    Custom Text Color
                }
            }
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
