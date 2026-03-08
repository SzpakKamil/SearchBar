# ``SearchBar/SearchBar/searchBarScale(_:)``

A SwiftUI view modifier that adjusts the padding between a `SearchBar`’s elements and its border.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `.searchBarScale(_:)` modifier configures the size and padding of a `SearchBar` view, adjusting the spacing between its elements (e.g., text field, icons) and its border using the `SearchBarScale` enum’s cases: `small`, `medium`, or `large`. Available on iOS 14.0+, iPadOS 14.0+, macOS 11.0+, and visionOS 1.0+, this modifier scales the search bar’s height via the `heightMultiplier` property (e.g., 1.0, 0.80, 0.9 on iOS; 1, 2, 3 on macOS) and its corner radius via the `cornerScale` property (1.0, 1.15, 1.25). Use this modifier to customize the search bar’s layout for different interface needs, combining it with `.searchBarMaterial(_:)` and `.searchBarCancelButtonDisplayMode(_:)` for a cohesive design. The table below summarizes the modifier’s parameter.

### Parameters Grid
| Parameter Name | Type | Description |
|----------------|------|-------------|
| scale          | SearchBarScale | The scale size to apply, either `.small`, `.medium`, or `.large`. |

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.large)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
        Configure the search bar scale to match your iOS application's layout.

        @TabNavigator {
            @Tab("Small") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Small-iOS", alt: "Small Scale") {
                    Small Scale
                }
            }
            @Tab("Medium") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Medium-iOS", alt: "Medium Scale") {
                    Medium Scale
                }
            }
            @Tab("Large") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Large-iOS", alt: "Large Scale") {
                    Large Scale
                }
            }
        }
    }
    @Tab("iPadOS") {
        Adjust the scale for optimal readability and accessibility.

        @TabNavigator {
            @Tab("Small") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Small-iPadOS", alt: "Small Scale") {
                    Small Scale
                }
            }
            @Tab("Medium") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Medium-iPadOS", alt: "Medium Scale") {
                    Medium Scale
                }
            }
            @Tab("Large") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Large-iPadOS", alt: "Large Scale") {
                    Large Scale
                }
            }
        }
    }
    @Tab("macOS") {
        Scale the search bar to fit various desktop interface densities.

        @TabNavigator {
            @Tab("Small") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Small-macOSTahoe", alt: "Small Scale") {
                    Small Scale
                }
            }
            @Tab("Medium") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Medium-macOSTahoe", alt: "Medium Scale") {
                    Medium Scale
                }
            }
            @Tab("Large") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Large-macOSTahoe", alt: "Large Scale") {
                    Large Scale
                }
            }
        }
    }
    @Tab("tvOS") {
        Select a scale that works best for large-screen viewing and navigation.

        @TabNavigator {
            @Tab("Small") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Small-tvOS", alt: "Small Scale") {
                    Small Scale
                }
            }
            @Tab("Medium") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Medium-tvOS", alt: "Medium Scale") {
                    Medium Scale
                }
            }
            @Tab("Large") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Large-tvOS", alt: "Large Scale") {
                    Large Scale
                }
            }
        }
    }
    @Tab("watchOS") {
        Optimize the search bar scale for the watch's compact display.

        @TabNavigator {
            @Tab("Small") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Small-watchOS", alt: "Small Scale") {
                    Small Scale
                }
            }
            @Tab("Medium") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Medium-watchOS", alt: "Medium Scale") {
                    Medium Scale
                }
            }
            @Tab("Large") {
                @Image(source: "Documentation-SearchBarStyle-Scale-Large-watchOS", alt: "Large Scale") {
                    Large Scale
                }
            }
        }
    }
}

## Related Types
- ``SearchBar/SearchBarScale``
