# ``SearchBarStyle``

A struct that defines the visual appearance and color configuration for a `SearchBar`.

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

`SearchBarStyle` is a core component of the `SearchBar` package, used to customize the appearance of a `SearchBar` by configuring its corner radius, text color, tint color, token background color, and background color. It integrates with `SearchBar` via the `searchBarStyle(_:)` modifier, supporting predefined styles through static properties (`capsule`, `rectangle`, `rounded`) or custom configurations via initializers. Available on macOS, iOS, iPadOS, and visionOS, with some properties limited to non-macOS platforms.

## Support

Below is an example of a struct using `SearchBarStyle`:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    let style = SearchBarStyle(style: .capsule, textColor: .black, tint: .blue, backgroundColor: .gray)
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(style)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Customize the visual style to match your iOS app's design aesthetic.

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
        Select a style that compliments the iPadOS interface.

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

## Conformances

### Equatable
- Allows comparison of `SearchBarStyle` instances based on `cornerRadius`, `backgroundColor`, `tintColor`, and `textColor`.
- Enables equality checks for style consistency in SwiftUI views.
- Supports use in collections requiring equality comparisons.

## Topics

### Properties
- ``SearchBarStyle/cornerRadius``
- ``SearchBarStyle/borderColor``
- ``SearchBarStyle/textColor``
- ``SearchBarStyle/tintColor``
- ``SearchBarStyle/tokenBackground``
- ``SearchBarStyle/usesCustomBackground``
- ``SearchBarStyle/backgroundColor``

### Initializers
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(style:borderColor:textColor:tint:backgroundColor:)``
- ``SearchBarStyle/init(cornerRadius:borderColor:textColor:tint:tokenBackground:backgroundColor:)``
- ``SearchBarStyle/init(style:borderColor:textColor:tint:tokenBackground:backgroundColor:)``

### Static Properties
- ``SearchBarStyle/capsule``
- ``SearchBarStyle/rectangle``
- ``SearchBarStyle/rounded``

## See Also

- ``SearchBar``
- ``SearchBarCornerStyle``
