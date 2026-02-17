# ``SearchBar/SearchBarMaterial``

An enumeration that specifies the material style for a `SearchBar` view.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
    @Available(tvOS, introduced: "26.0")
    @Available(watchOS, introduced: "26.0")
    @Available(visionOS, introduced: "26.0")
    @Available(Xcode, introduced: "26.0")
    @Available(Swift, introduced: "5.9")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `SearchBarMaterial` enum defines the visual material style for a `SearchBar` view, supporting two cases: `solid` and `glass`. It conforms to `Identifiable`, `Equatable`, and `Hashable`, making it suitable for use in SwiftUI views and data models. Introduced in iOS 26.0, macOS 26.0, and later, this enum enables the “Liquid Glass” design paradigm, providing a modern, translucent, or opaque appearance for search bars. The material is applied using the `.searchBarMaterial(_:)` modifier. The table below summarizes the available materials, their IDs, and descriptions.

> Important: This type is unavailable on visionOS.

### Material Grid
| Material Name | ID | Description |
|---------------|----|-------------|
| Solid         | 0  | An opaque material with a solid background, ideal for high-contrast interfaces. |
| Glass         | 1  | A translucent “Liquid Glass” material, providing a modern, frosted appearance. |

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
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
- ``SearchBar/SearchBar/searchBarMaterial(_:)``
- ``SearchBar``
