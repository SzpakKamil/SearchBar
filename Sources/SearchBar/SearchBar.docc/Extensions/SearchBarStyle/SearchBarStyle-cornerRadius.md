# ``SearchBar/SearchBarStyle/cornerRadius``

`SearchBar` corner radius.

@Metadata {
    @DisplayName("CornerRadius")
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

- `CGFloat` value for corner radius.
- Set via initializers or `SearchBarCornerStyle`.
- Common values: 0, 10, 18, 22.

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
