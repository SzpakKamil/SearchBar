# ``SearchBar/SearchBar/searchBarMaterial(_:)``

Applies a material style to `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "26.0")
    @Available(iPadOS, introduced: "26.0")
    @Available(macOS, introduced: "26.0")
    @Available(tvOS, introduced: "26.0")
    @Available(watchOS, introduced: "26.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`searchBarMaterial(_:)` applies a `solid` or `glass` material style. Supported on iOS 26.0+, iPadOS 26.0+, macOS 26.0+.

### Parameters Grid
| Parameter Name | Type | Description |
|----------------|------|-------------|
| material       | SearchBarMaterial | The material style: `.solid` or `.glass`. |

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
    @Tab("tvOS") {
        @TabNavigator {
            @Tab("Solid") {
                @Image(source: "Documentation-SearchBarStyle-Material-Solid-tvOS", alt: "Solid Material") {
                    Solid Material
                }
            }
            @Tab("Glass") {
                @Image(source: "Documentation-SearchBarStyle-Material-Glass-tvOS", alt: "Glass Material") {
                    Glass Material
                }
            }
        }
    }
    @Tab("watchOS") {
        @TabNavigator {
            @Tab("Solid") {
                @Image(source: "Documentation-SearchBarStyle-Material-Solid-watchOS", alt: "Solid Material") {
                    Solid Material
                }
            }
            @Tab("Glass") {
                @Image(source: "Documentation-SearchBarStyle-Material-Glass-watchOS", alt: "Glass Material") {
                    Glass Material
                }
            }
        }
    }
}

## See Also
- ``SearchBar/SearchBarMaterial``
