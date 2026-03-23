# ``SearchBar/SearchBar/searchBarTextContentType(_:)``

Specifies text content type.

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

`searchBarTextContentType(_:)` sets the content type for autofill. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UITextContentType` value (e.g., `.emailAddress`, `.url`).

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

This sets the content type to email.

@TabNavigator {
    @Tab("iOS") {
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

- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``
