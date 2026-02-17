# ``SearchBar/SearchBarStyle/textColor``

The color of the text inside the `SearchBar`.

@Metadata {
    @DisplayName("TextColor")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "14.0")
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

- An optional `Color` value for the `SearchBar`’s input text.
- If `nil`, uses the system default text color.
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
        Configure the text color for optimal contrast and branding.

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
        Set the text color to match your application's typography.

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
        Adjust the text color to ensure clarity across various window styles.

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
        Configure text color for visibility against varied spatial backgrounds.

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
}

## See Also

- ``SearchBarStyle``
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
