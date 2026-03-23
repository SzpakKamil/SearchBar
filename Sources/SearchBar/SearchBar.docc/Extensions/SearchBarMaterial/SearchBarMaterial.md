# ``SearchBar/SearchBarMaterial``

Enumeration for material style.

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

`SearchBarMaterial` defines visual style (`solid`, `glass`). Conforms to `Identifiable`, `Equatable`, `Hashable`. Available on iOS 26.0+, macOS 26.0+. Applied via `.searchBarMaterial(_:)`.

> Important: This type is unavailable on visionOS.

### Material Grid
| Material Name | ID | Description |
|---------------|----|-------------|
| Solid         | 0  | Opaque material with solid background. |
| Glass         | 1  | Translucent “Liquid Glass” material. |

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
