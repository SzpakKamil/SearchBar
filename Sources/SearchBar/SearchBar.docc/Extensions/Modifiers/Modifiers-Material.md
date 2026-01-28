# ``SearchBar/SearchBar/searchBarMaterial(_:)``

A SwiftUI view modifier that applies a material style to a `SearchBar` view.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `.searchBarMaterial(_:)` modifier configures the visual material style of a `SearchBar` view, applying either a `solid` or `glass` appearance defined by the `SearchBarMaterial` enum. Introduced in iOS 26.0, iPadOS 26.0, and macOS 26.0, this modifier supports the experimental “Liquid Glass” design paradigm, providing an opaque (`solid`) or translucent (`glass`) look for search bars. The `glass` material creates a modern, frosted effect, while `solid` ensures high contrast. Use this modifier to enhance the aesthetic of a `SearchBar` in beta OS versions, combining it with `.searchBarScale(_:)` and `.searchBarCancelButtonDisplayMode(_:)` for full customization. The table below summarizes the modifier’s parameter.

> Warning: This is an implementation of Liquid Glass for beta versions of operating systems. Use at your own risk.

### Parameters Grid
| Parameter Name | Type | Description |
|----------------|------|-------------|
| material       | SearchBarMaterial | The material style to apply, either `.solid` or `.glass`. |

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarMaterial(.glass)
            .searchBarMaterial(.glass)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Select the material that best compliments your iOS app's design language.

        @TabNavigator {
            @Tab("Solid") {
                @Image(source: "Documentation-SearchBarStyle-Material-Solid-iOS", alt: "Solid Material") {
                    Solid Material
                }
            }
            @Tab("Glass") {
                @Image(source: "Documentation-SearchBarStyle-Material-Glass-iOS", alt: "Glass Material") {
                    Glass Material
                }
            }
        }
    }
    @Tab("iPadOS") {
        Choose a material that enhances the visual hierarchy.

        @TabNavigator {
            @Tab("Solid") {
                @Image(source: "Documentation-SearchBarStyle-Material-Solid-iPadOS", alt: "Solid Material") {
                    Solid Material
                }
            }
            @Tab("Glass") {
                @Image(source: "Documentation-SearchBarStyle-Material-Glass-iPadOS", alt: "Glass Material") {
                    Glass Material
                }
            }
        }
    }
    @Tab("macOS") {
        Apply the appropriate material to integrate with the macOS desktop aesthetic.

        @TabNavigator {
            @Tab("Solid") {
                @Image(source: "Documentation-SearchBarStyle-Material-Solid-macOSTahoe", alt: "Solid Material") {
                    Solid Material
                }
            }
            @Tab("Glass") {
                @Image(source: "Documentation-SearchBarStyle-Material-Glass-macOSTahoe", alt: "Glass Material") {
                    Glass Material
                }
            }
        }
    }
}

## Related Types
- ``SearchBar/SearchBarMaterial``
