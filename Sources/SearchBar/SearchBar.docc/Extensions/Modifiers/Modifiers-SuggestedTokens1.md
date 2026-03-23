# ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``

Sets static suggested tokens.

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

`searchBarSuggestedTokens(_:)` sets static `SearchBarToken` suggestions. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

> Warning: note that without current tokens modifier used this modifiers will not do anything when selected

## Parameters

- `tokens`: Array of `SearchBarToken` objects.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var currentTokens: [SearchBarToken] = []
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarCurrentTokens($currentTokens)
            .searchBarSuggestedTokens([
                SearchBarToken(text: "Recent", systemName: "clock")
            ])
    }
}
```

This provides static token suggestions.

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Default-iOS", alt: "Default Suggested Tokens") {
                    Default Suggested Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Enabled-iOS", alt: "Enabled Suggested Tokens") {
                    Enabled Suggested Tokens
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Default-iPadOS", alt: "Default Suggested Tokens") {
                    Default Suggested Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Enabled-iPadOS", alt: "Enabled Suggested Tokens") {
                    Enabled Suggested Tokens
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Default-visionOS", alt: "Default Suggested Tokens") {
                    Default Suggested Tokens
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-SuggestedTokens-Enabled-visionOS", alt: "Enabled Suggested Tokens") {
                    Enabled Suggested Tokens
                }
            }
        }
    }
}

## See Also

- ``SearchBarToken``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-54f3``
