# ``SearchBar/SearchBarScale``

Enumeration for search bar scale.

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

`SearchBarScale` defines scale (`small`, `medium`, `large`). Conforms to `Identifiable`, `Equatable`, `Hashable`. Available on iOS 14.0+, iPadOS 14.0+, macOS 11.0+. Adjusts `heightMultiplier` and `cornerScale`.

- macOS height multipliers: 1, 2, 3.
- iOS < 26.0 height multipliers: 1.0, 0.8, 0.9.
- iOS 26.0+ height multipliers: 0.82, 0.77, 0.8.

- Small corner scale: 1.0.
- Medium corner scale: 1.2 (< iOS 26), 1.35 (iOS 26+).
- Large corner scale: 1.4.

The scale is applied using the `.searchBarScale(_:)` modifier. The table below summarizes the available scales, their IDs, and descriptions.

> Important: This type is unavailable on visionOS.

### Scale Grid
| Scale Name | ID | Description |
|------------|----|-------------|
| Small      | 0  | Compact size. |
| Medium     | 1  | Balanced size. |
| Large      | 2  | Expanded size. |

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.medium)
            .searchBarMaterial(.glass)
    }
}
```

@TabNavigator {
    @Tab("iOS") {
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
}
