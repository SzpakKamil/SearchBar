# ``SearchBar/searchBarSuggestedTokens(_:)-54f3``

Converts a list of suggestions into tokens for the `SearchBar`.

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

The `searchBarSuggestedTokens(_:)` modifier takes a list of `SearchBarSuggestion` objects and converts them into tokens for the `SearchBar`. Available on iOS and visionOS, it’s used to provide suggestions as selectable tokens.

> Note: This modifier is not supported due to platform-specific UI differences.

> Warning: note that without current tokens modifier used this modifiers will not do anything when selected

## Parameters

- `suggestions`: An array of `SearchBarSuggestion` objects to convert into tokens.

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
                SearchBarSuggestion(text: "Sweet", systemName: "star.fill")
            ])
    }
}
```

This example converts suggestions into tokens and manages current tokens to enable selection functionality.

@TabNavigator {
    @Tab("iOS") {
        Provide suggested tokens to guide users through available filters.

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
        Offer suggested tokens to enhance the search experience on larger screens.

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
        Configure suggested tokens for intuitive spatial filtering suggestions.

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

- ``SearchBarSuggestion``
- ``SearchBar/searchBarSuggestedTokens(_:)-5wxi``
- ``SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
