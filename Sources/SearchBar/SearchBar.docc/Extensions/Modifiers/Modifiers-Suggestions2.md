# ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``

Sets a static list of suggestions for the `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(macOS, introduced: "15.0")
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

The `searchBarSuggestions(_:)` modifier sets a static list of `SearchBarSuggestion` objects for the `SearchBar`. Available on iOS, iPadOS, visionOS, and macOS, it provides a fixed set of suggestions for the user.

## Parameters

- `suggestions`: An array of `SearchBarSuggestion` objects representing the suggestions.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarSuggestions([
                SearchBarSuggestion(text: "Banana", systemName: "leaf")
            ])
    }
}
```

This example sets a static list of suggestions for the `SearchBar`.

@TabNavigator {
    @Tab("iOS") {
        Display predictive suggestions to help users find what they are looking for faster.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Default-iOS", alt: "Default Suggestions") {
                    Default Suggestions
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Enabled-iOS", alt: "Enabled Suggestions") {
                    Enabled Suggestions
                }
            }
        }
    }
    @Tab("iPadOS") {
        Adjust suggestions to leverage the additional screen real estate.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Default-iPadOS", alt: "Default Suggestions") {
                    Default Suggestions
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Enabled-iPadOS", alt: "Enabled Suggestions") {
                    Enabled Suggestions
                }
            }
        }
    }
    @Tab("macOS") {
        Integrate suggestions to provide a seamless desktop search experience.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Default-macOSTahoe", alt: "Default Suggestions") {
                    Default Suggestions
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Enabled-macOSTahoe", alt: "Enabled Suggestions") {
                    Enabled Suggestions
                }
            }
        }
    }
    @Tab("visionOS") {
        Configure suggestions for spatial search interactions.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Default-visionOS", alt: "Default Suggestions") {
                    Default Suggestions
                }
            }
            @Tab("Enabled") {
                @Image(source: "Documentation-SearchBarSuggestionsTokens-Suggestions-Enabled-visionOS", alt: "Enabled Suggestions") {
                    Enabled Suggestions
                }
            }
        }
    }
}

## See Also

- ``SearchBarSuggestion``
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``
