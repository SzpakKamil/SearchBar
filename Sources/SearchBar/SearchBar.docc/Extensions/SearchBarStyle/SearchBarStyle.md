# ``SearchBarStyle``

Defines `SearchBar` visual appearance.

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

`SearchBarStyle` configures appearance (radius, colors). Integrates via `searchBarStyle(_:)`. Supports static styles (`capsule`, `rectangle`, `rounded`) or custom initialization. Cross-platform.

## Usage

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

## Conformances

### Equatable
- Compares instances by properties.

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
