# Fruits List

@Metadata {
    @TitleHeading("Sample Code")
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageKind(sampleCode)
    @PageColor(purple)
    @PageImage(purpose: card, source: "SearchBarSample")
    @CallToAction(url: "https://assets.kamilszpak.com/SearchBar/FruitsList.zip", label: "Download")
}

Explore a dynamic, token-based search experience in a sample fruit list app.

## Overview

The Fruits List sample demonstrates `SearchBar` capabilities on iOS (16.0+) and visionOS (1.0+). It features a searchable fruit list with text and token filtering (e.g., sweet, sour). The project showcases token-based filtering, dynamic suggestions, and event handling in a native SwiftUI interface.

Key Features:
- **Native Search**: Uses `SearchBar` with `UISearchBar` on iOS/visionOS.
- **Token Filtering**: Filters by type (e.g., soft, sweet) using `SearchBarToken`.
- **Dynamic Suggestions**: Displays type suggestions with icons and descriptions.
- **Responsive UI**: Includes search overlay, dimmed background, and no-results view.
- **Platform Optimization**: Adapts styling for iOS and visionOS.

## Project Structure

- **`ContentView.swift`**: Implements the searchable list UI, managing state and interactions.
- **`Fruit.swift`**: Models data with `Fruit` struct and `FruitType` enum, providing filtering categories.

## Key Implementation Details

### Search Bar Configuration

```swift
SearchBar(text: $searchText, prompt: "Search Fruits")
    .searchBarCurrentTokens($currentTokens)
    .searchBarSuggestions(FruitType.allCases.map(\.suggestion))
    .searchBarEnableAutomaticSuggestionsFiltering()
    .searchBarIsFocused($usingSearchbar)
    .searchBarCancelButtonDisplayMode(.always)
    .searchBarCancelButtonAction {
        searchText = ""
        currentTokens = []
        usingSearchbar = false
    }
```

- **Tokens**: `.searchBarCurrentTokens($currentTokens)` binds tokens for filtering.
- **Suggestions**: `.searchBarSuggestions` provides static suggestions.
- **Automatic Filtering**: `.searchBarEnableAutomaticSuggestionsFiltering()` filters suggestions by input.
- **Focus/Cancel**: Manages focus and cancel button.

### Filtering Logic

```swift
let filteredFruits = fruits.filter { fruit in
    let trimmedSearchText = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
    let tokenMatch = currentTokens.isEmpty || fruit.type.map(\.suggestion.token!).contains { token in
        currentTokens.contains { $0.id == token.id }
    }
    let textMatch = trimmedSearchText.isEmpty || fruit.name.localizedStandardContains(trimmedSearchText)
    return tokenMatch && textMatch
}
```

- **Token Matching**: Checks if fruit types match selected tokens.
- **Text Matching**: Filters by name (case-insensitive).
- **Combined**: Applies both conditions.

### UI Features
- **Toggleable Search**: Toolbar button toggles overlay with animation.
- **Dimmed Background**: Dims background when active.
- **No-Results View**: Shows when no matches found.
- **Platform Styling**: Applies conditional padding and background.

### Data Models

- **`Fruit`**: Properties for name, description, type, and search suggestion.
- **Icon**: Derives SF Symbol from type.
- **`FruitType`**: Cases with unique suggestions and tokens.
- **Details**: Provides metadata for UI.

## Setup Instructions

1. In Xcode, select **File > Add Package Dependency**.
2. Enter URL: `https://github.com/SzpakKamil/SearchBar.git`.
3. Select version or `main` branch.
4. Import: `import SearchBar`.
5. Add `ContentView.swift` and `KeywordFruit.swift`.
6. Ensure targets: iOS 16.0+, visionOS 1.0+, Swift 5.9+.
7. Build in Xcode 15.0+.
8. Test on simulator or device.

Download the [Fruits List sample](https://assets.kamilszpak.com/SearchBar/FruitsList.zip).

## Troubleshooting

- **SearchBar not appearing?** Ensure `SearchBar` is added and imported.
- **Tokens not filtering?** Verify `FruitType.suggestion` provides tokens.
- **UI issues on visionOS?** Confirm visionOS 1.0+ target.
- **No suggestions displayed?** Check suggestions configuration.

## Next Steps

- Dive into available modifiers in <doc:Modifiers>.
- Refer to the ``SearchBar-2dti`` API documentation.
