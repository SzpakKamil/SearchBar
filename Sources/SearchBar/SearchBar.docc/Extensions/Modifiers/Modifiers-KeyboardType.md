# ``SearchBar/searchBarKeyboardType(_:)``

Sets the keyboard type for the `SearchBar`’s text input.

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

The `searchBarKeyboardType(_:)` modifier configures the type of keyboard displayed when the user edits the `SearchBar`’s text. Available on iOS and visionOS, it supports types like `.emailAddress` or `.numberPad` to match the expected input.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIKeyboardType` specifying the keyboard type (e.g., `.default`, `.emailAddress`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarKeyboardType(.emailAddress)
    }
}
```

This example uses an email keyboard for the `SearchBar`.

@TabNavigator {
    @Tab("iOS") {
        Select the keyboard type that best fits your search input requirements.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Default-iOS", alt: "Default Keyboard") {
                    Default Keyboard
                }
            }
            @Tab("Alphabet") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Alphabet-iOS", alt: "Alphabet Keyboard") {
                    Alphabet Keyboard
                }
            }
            @Tab("Number Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumberPad-iOS", alt: "Number Pad") {
                    Number Pad
                }
            }
            @Tab("Decimal Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-DecimalPad-iOS", alt: "Decimal Pad") {
                    Decimal Pad
                }
            }
            @Tab("Email Address") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-EmailAddress-iOS", alt: "Email Address Keyboard") {
                    Email Address Keyboard
                }
            }
            @Tab("URL") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-URL-iOS", alt: "URL Keyboard") {
                    URL Keyboard
                }
            }
            @Tab("Web Search") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-WebSearch-iOS", alt: "Web Search Keyboard") {
                    Web Search Keyboard
                }
            }
            @Tab("Numbers Punctuation") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumbersPunctuaton-iOS", alt: "Numbers and Punctuation") {
                    Numbers and Punctuation
                }
            }
        }
    }
    @Tab("iPadOS") {
        Choose the keyboard type to optimize for various screen and multitasking configurations.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Default-iPadOS", alt: "Default Keyboard") {
                    Default Keyboard
                }
            }
            @Tab("Alphabet") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Alphabet-iPadOS", alt: "Alphabet Keyboard") {
                    Alphabet Keyboard
                }
            }
            @Tab("Number Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumberPad-iPadOS", alt: "Number Pad") {
                    Number Pad
                }
            }
            @Tab("Decimal Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-DecimalPad-iPadOS", alt: "Decimal Pad") {
                    Decimal Pad
                }
            }
            @Tab("Email Address") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-EmailAddress-iPadOS", alt: "Email Address Keyboard") {
                    Email Address Keyboard
                }
            }
            @Tab("URL") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-URL-iPadOS", alt: "URL Keyboard") {
                    URL Keyboard
                }
            }
            @Tab("Web Search") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-WebSearch-iPadOS", alt: "Web Search Keyboard") {
                    Web Search Keyboard
                }
            }
            @Tab("Numbers Punctuation") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumbersPunctuaton-iPadOS", alt: "Numbers and Punctuation") {
                    Numbers and Punctuation
                }
            }
        }
    }
    @Tab("visionOS") {
        Customize the keyboard type to enhance spatial text entry efficiency.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Default-visionOS", alt: "Default Keyboard") {
                    Default Keyboard
                }
            }
            @Tab("Alphabet") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-Alphabet-visionOS", alt: "Alphabet Keyboard") {
                    Alphabet Keyboard
                }
            }
            @Tab("Number Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumberPad-visionOS", alt: "Number Pad") {
                    Number Pad
                }
            }
            @Tab("Decimal Pad") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-DecimalPad-visionOS", alt: "Decimal Pad") {
                    Decimal Pad
                }
            }
            @Tab("Email Address") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-EmailAddress-visionOS", alt: "Email Address Keyboard") {
                    Email Address Keyboard
                }
            }
            @Tab("URL") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-URL-visionOS", alt: "URL Keyboard") {
                    URL Keyboard
                }
            }
            @Tab("Web Search") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-WebSearch-visionOS", alt: "Web Search Keyboard") {
                    Web Search Keyboard
                }
            }
            @Tab("Numbers Punctuation") {
                @Image(source: "Documentation-SearchBarKeyboard-Type-NumbersPunctuation-visionOS", alt: "Numbers and Punctuation") {
                    Numbers and Punctuation
                }
            }
        }
    }
}

## See Also

- ``SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/searchBarTextContentType(_:)``
