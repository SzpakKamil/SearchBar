# ``SearchBar/SearchBarCornerStyle``

Enumeration for corner style.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
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

`SearchBarCornerStyle` defines corner appearance (`capsule`, `rectangle`, `rounded`). Used in `SearchBarStyle` and applied via `searchBarStyle(_:)`. `cornerRadius` varies by platform.

> Important: This type is unavailable on visionOS.

## Cases

- ``SearchBarCornerStyle/capsule``: Fully rounded, capsule-shaped.
- ``SearchBarCornerStyle/rectangle``: Sharp-edged, rectangular.
- ``SearchBarCornerStyle/rounded``: Softly rounded.

## Properties

- ``SearchBarCornerStyle/cornerRadius``: Corner radius, varying by platform.

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
