# ``SearchBar/SearchBar/searchBarCurrentTokens(_:)``

Manages dynamic tokens.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(iPadOS, introduced: "16.0")
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

`searchBarCurrentTokens(_:)` binds `SearchBarToken` objects to manage filters. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `tokens`: A `Binding<[SearchBarToken]>` for tokens.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCurrentTokens($tokens)
    }
}
```

This binds a dynamic list of tokens.

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Default-iOS", alt: "Default Tokens") {
                    Default Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Enabled-iOS", alt: "Enabled Tokens") {
                    Enabled Tokens
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Default-iPadOS", alt: "Default Tokens") {
                    Default Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Enabled-iPadOS", alt: "Enabled Tokens") {
                    Enabled Tokens
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Default-visionOS", alt: "Default Tokens") {
                    Default Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-CurrentTokens-Enabled-visionOS", alt: "Enabled Tokens") {
                    Enabled Tokens
                }
            }
        }
    }
}

## See Also

- ``SearchBarToken``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``
