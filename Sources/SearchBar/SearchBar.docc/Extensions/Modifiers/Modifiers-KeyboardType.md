# ``SearchBar/SearchBar/searchBarKeyboardType(_:)``

Sets text input keyboard type.

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

`searchBarKeyboardType(_:)` configures the keyboard type. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIKeyboardType` value (e.g., `.default`, `.emailAddress`).

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

This uses an email keyboard.

@TabNavigator {
    @Tab("iOS") {
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

- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``
