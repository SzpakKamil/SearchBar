# ``SearchBar/SearchBarCornerStyle``

An enumeration that specifies the corner style of a `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "14.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarCornerStyle` defines the corner appearance of a `SearchBar`, offering three styles: `capsule`, `rectangle`, or `rounded`. It is used within `SearchBarStyle` to set the corner radius and is applied via the `searchBarStyle(_:)` modifier on macOS, iOS, iPadOS, and visionOS. The `cornerRadius` property provides platform-specific values, such as 22 for `capsule` on visionOS and 5 for `rounded` on macOS.

> Important: This type is unavailable on visionOS.

## Cases

- ``SearchBarCornerStyle/capsule``: A fully rounded, capsule-shaped appearance.
- ``SearchBarCornerStyle/rectangle``: A sharp-edged, rectangle appearance.
- ``SearchBarCornerStyle/rounded``: A softly rounded appearance.

## Properties

- ``SearchBarCornerStyle/cornerRadius``: The corner radius for the style, varying by platform.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style: .rounded)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Customize the corner radius to match your iOS app's design aesthetic.

        @TabNavigator {
            @Tab("Capsule") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iOS", alt: "Capsule") {
                    Capsule
                }
            }
            @Tab("Rounded") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iOS", alt: "Rounded") {
                    Rounded
                }
            }
            @Tab("Rectangle") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iOS", alt: "Rectangle") {
                    Rectangle
                }
            }
        }
    }
    @Tab("iPadOS") {
        Select a corner style that compliments the iPadOS interface.

        @TabNavigator {
            @Tab("Capsule") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-iPadOS", alt: "Capsule") {
                    Capsule
                }
            }
            @Tab("Rounded") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-iPadOS", alt: "Rounded") {
                    Rounded
                }
            }
            @Tab("Rectangle") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-iPadOS", alt: "Rectangle") {
                    Rectangle
                }
            }
        }
    }
    @Tab("macOS") {
        Adapt the search bar's shape to fit the macOS desktop environment.

        @TabNavigator {
            @Tab("Capsule") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-macOSTahoe", alt: "Capsule") {
                    Capsule
                }
            }
            @Tab("Rounded") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-macOSTahoe", alt: "Rounded") {
                    Rounded
                }
            }
            @Tab("Rectangle") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-macOSTahoe", alt: "Rectangle") {
                    Rectangle
                }
            }
        }
    }
    @Tab("visionOS") {
        Choose a style that enhances spatial computing.

        @TabNavigator {
            @Tab("Capsule") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Capsule-visionOS", alt: "Capsule") {
                    Capsule
                }
            }
            @Tab("Rounded") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rounded-visionOS", alt: "Rounded") {
                    Rounded
                }
            }
            @Tab("Rectangle") {
                @Image(source: "Documentation-SearchBarStyle-DefaultStyle-Rectangle-visionOS", alt: "Rectangle") {
                    Rectangle
                }
            }
        }
    }
}

## See Also

- ``SearchBar``
- ``SearchBarStyle``
- ``SearchBarCornerStyle/capsule``
- ``SearchBarCornerStyle/rectangle``
- ``SearchBarCornerStyle/rounded``
