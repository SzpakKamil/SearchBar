# ``SearchBar/SearchBarStyle/cornerRadius``

The roundness of the `SearchBar`’s corners.

@Metadata {
    @DisplayName("CornerRadius")
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

- A `CGFloat` value determining the corner radius of the `SearchBar`.
- Set directly via initializers or derived from a `SearchBarCornerStyle`.
- Common values include 0 (rectangle), 10 (rounded on iOS/visionOS), or 18/22 (capsule).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(SearchBarStyle(cornerRadius: 10))
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Adjust the corner radius to achieve the desired level of roundness for your search bar.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-iOS", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-iOS", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
    @Tab("iPadOS") {
        Set a custom corner radius to match your app's layout and design.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-iPadOS", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-iPadOS", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
    @Tab("macOS") {
        Configure the corner radius to better integrate with desktop window elements.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-macOSTahoe", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-macOSTahoe", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
    @Tab("visionOS") {
        Select a corner radius that enhances the spatial computing feel.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-visionOS", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-visionOS", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
    @Tab("tvOS") {
        Adjust the corner radius for optimal display on a large screen.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-tvOS", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-tvOS", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
    @Tab("watchOS") {
        Set a corner radius that complements the watch's compact display.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Default-watchOS", alt: "Default Corner Radius") {
                    Default Corner Radius
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarStyle-CornerRadius-Custom-watchOS", alt: "Custom Corner Radius") {
                    Custom Corner Radius
                }
            }
        }
    }
}

## See Also

- ``SearchBarStyle``
- ``SearchBarCornerStyle``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/backgroundColor``
- ``SearchBarStyle/usesCustomBackground``
