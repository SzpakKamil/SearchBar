# ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``

Sets a binding to suggestions.

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

`searchBarSuggestions(_:)` binds `SearchBarSuggestion` objects for dynamic updates. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `suggestions`: A `Binding<[SearchBarSuggestion]>` for suggestions.

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var suggestions: [SearchBarSuggestion] = [
        SearchBarSuggestion(text: "Apple", systemName: "applelogo")
    ]
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarSuggestions($suggestions)
    }
}
```

This binds a dynamic list of suggestions.

@TabNavigator {
    @Tab("iOS") {
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
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``
