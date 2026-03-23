# ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``

Configures text input autocapitalization.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
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

`searchBarAutoCapitalizationType(_:)` sets autocapitalization behavior like words or sentences. Supported on iOS (14.0+) and visionOS (1.0+).

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocapitalizationType` value (e.g., `.none`, `.words`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarAutoCapitalizationType(.none)
    }
}
```

This disables autocapitalization.

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("None") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-None-iOS", alt: "No") {
                    No
                }
            }
            @Tab("Sentences") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Sentences-iOS", alt: "Sentence") {
                    Sentence
                }
            }
            @Tab("Words") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Words-iOS", alt: "Word") {
                    Word
                }
            }
            @Tab("All Characters") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-AllCharacters-iOS", alt: "All Characters") {
                    All Characters
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("None") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-None-iPadOS", alt: "No") {
                    No
                }
            }
            @Tab("Sentences") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Sentences-iPadOS", alt: "Sentence") {
                    Sentence
                }
            }
            @Tab("Words") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Words-iPadOS", alt: "Word") {
                    Word
                }
            }
            @Tab("All Characters") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-AllCharacters-iPadOS", alt: "All Characters") {
                    All Characters
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("None") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-None-visionOS", alt: "No") {
                    No
                }
            }
            @Tab("Sentences") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Sentences-visionOS", alt: "Sentence") {
                    Sentence
                }
            }
            @Tab("Words") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-Words-visionOS", alt: "Word") {
                    Word
                }
            }
            @Tab("All Characters") {
                @Image(source: "Documentation-SearchBarKeyboard-AutoCapitalizationType-AllCharacters-visionOS", alt: "All Characters") {
                    All Characters
                }
            }
        }
    }
}

## See Also

- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
