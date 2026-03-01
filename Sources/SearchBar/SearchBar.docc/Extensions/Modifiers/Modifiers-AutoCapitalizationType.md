# ``SearchBar/searchBarAutoCapitalizationType(_:)``

Configures the autocapitalization behavior of the `SearchBar`’s text input.

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

The `searchBarAutoCapitalizationType(_:)` modifier sets the autocapitalization behavior for the `SearchBar`’s text input, such as capitalizing words or sentences. Available on iOS (14.0+) and visionOS (1.0+), this modifier helps tailor the keyboard experience to the expected input.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextAutocapitalizationType` specifying the capitalization behavior (e.g., `.none`, `.words`).

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

This example disables autocapitalization, ensuring all text remains lowercase as typed.

@TabNavigator {
    @Tab("iOS") {
        Configure the capitalization behavior for a more efficient typing experience.

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
        Adjust the capitalization behavior to suit the larger keyboard and screen.

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
        Customize the capitalization for a more precise spatial interaction.

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

- ``SearchBar/searchBarAutoCorrectionType(_:)``
- ``SearchBar/searchBarKeyboardType(_:)``
