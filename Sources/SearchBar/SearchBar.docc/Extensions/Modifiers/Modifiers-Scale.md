# ``SearchBar/SearchBar/searchBarScale(_:)``

Adjusts `SearchBar` scaling and padding.

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

`searchBarScale(_:)` configures size and padding using `SearchBarScale`. Supported on iOS 14.0+, iPadOS 14.0+, macOS 11.0+, and visionOS 1.0+.

### Parameters Grid
| Parameter Name | Type | Description |
|----------------|------|-------------|
| scale          | SearchBarScale | The scale size: `.small`, `.medium`, or `.large`. |

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
    @Tab("tvOS") {
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
