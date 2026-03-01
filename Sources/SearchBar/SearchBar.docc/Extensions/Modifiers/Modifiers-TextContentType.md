# ``SearchBar/searchBarTextContentType(_:)``

Specifies the content type for the `SearchBar`’s text input to improve autofill and keyboard suggestions.

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

The `searchBarTextContentType(_:)` modifier sets the content type for the `SearchBar`’s text input, enabling better autofill and keyboard suggestions (e.g., for emails or URLs). Available on iOS and visionOS, it enhances the user experience for specific input types.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextContentType` specifying the content type (e.g., `.emailAddress`, `.url`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarTextContentType(.emailAddress)
    }
}
```

This example optimizes the keyboard for email input.

@TabNavigator {
    @Tab("iOS") {
        Configure the text content type to enable smarter autofill and keyboard suggestions.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-ContentType-Default-iOS", alt: "Default Content Type") {
                    Default Content Type
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarKeyboard-ContentType-Custom-iOS", alt: "Custom Content Type") {
                    Custom Content Type
                }
            }
        }
    }
    @Tab("iPadOS") {
        Adjust the text content type for enhanced input accuracy and predictive text.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-ContentType-Default-iPadOS", alt: "Default Content Type") {
                    Default Content Type
                }
            }
            @Tab("Custom") {
                @Image(source: "Documentation-SearchBarKeyboard-ContentType-Custom-iPadOS", alt: "Custom Content Type") {
                    Custom Content Type
                }
            }
        }
    }
}

## See Also

- ``SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/searchBarAutoCorrectionType(_:)``
