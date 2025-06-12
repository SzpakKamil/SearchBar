# Fruits List

@Metadata {
    @TitleHeading("Sample Code")
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @PageKind(sampleCode)
    @PageColor(purple)
    @PageImage(purpose: card, source: "SearchBarSample")
    @CallToAction(url: "https://assets.kamilszpak.com/SearchBar/FruitsList.zip", label: "Download")
}

Discover how the `SearchBar` package powers a dynamic, token-based search experience in a sample fruit list app for iOS and visionOS.

## Overview

The Fruits List sample project demonstrates the `SearchBar` package's capabilities in a SwiftUI app designed for iOS (16.0+) and visionOS (1.0+). It features a searchable list of fruits, allowing users to filter by name (via text input) and type (via search tokens, e.g., sweet, sour). The project showcases advanced `SearchBar` features like token-based filtering, dynamic suggestions, and event handling, all integrated into a clean, native SwiftUI interface.

Key features of the Fruits List app:
- **Native Search Bar**: Uses `SearchBar` to provide a platform-appropriate search experience with `UISearchBar` on iOS/visionOS.
- **Token-Based Filtering**: Enables filtering by fruit types (e.g., soft, hard, sweet, sour) using `SearchBarToken` for categorized searches.
- **Dynamic Suggestions**: Displays fruit type suggestions with custom icons and descriptions, leveraging `SearchBarSuggestion`.
- **Responsive UI**: Includes a toggleable search bar overlay, dimmed background, and a no-results view for an intuitive user experience.
- **Platform Optimizations**: Adapts styling and behavior for iOS and visionOS, such as capsule-shaped search bars on visionOS.

This sample project serves as a practical example of how to integrate and customize the `SearchBar` package in a real-world SwiftUI application.

## Project Structure

The Fruits List project consists of two main files:

- **`ContentView.swift`**: Defines the main `ContentView` struct, which implements the searchable fruit list UI. It uses `SearchBar` for text and token-based filtering, manages state for search text and tokens, and handles UI interactions like toggling the search bar.
- **`Fruit.swift`**: Contains the `Fruit` struct and `FruitType` enum, which model the app’s data. `Fruit` represents a fruit with a name, description, and types, while `FruitType` provides filtering categories with associated `SearchBarSuggestion` and `SearchBarToken` configurations.

## Key Implementation Details

### Search Bar Configuration
The `SearchBar` in `ContentView` is configured with several modifiers to enable a rich search experience:

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

- **Tokens**: `.searchBarCurrentTokens($currentTokens)` binds the search bar to an array of `SearchBarToken` for filtering by fruit type.
- **Suggestions**: `.searchBarSuggestions(.constant(FruitType.allCases.map(\.suggestion)))` provides a static list of fruit type suggestions, each with a title, description, and icon.
- **Automatic Filtering**: `.searchBarEnableAutomaticSuggestionsFiltering()` filters suggestions based on user input.
- **Focus and Cancel**: `.searchBarIsFocused($usingSearchbar)` and `.searchBarCancelButtonDisplayMode(.always)` manage the search bar’s focus state and provide a cancel button to reset the search.

### Filtering Logic
The fruit list is filtered based on both the search text and selected tokens:

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

- **Token Matching**: Checks if the fruit’s types include any of the selected tokens (or passes if no tokens are selected).
- **Text Matching**: Filters fruits whose names contain the search text (case-insensitive), ignoring empty searches.
- **Combined Logic**: Combines both conditions to ensure accurate filtering.

### UI Features
- **Toggleable Search Bar**: A toolbar button toggles the search bar overlay using the `usingSearchbar` state, with a smooth animation (`.animation(.smooth, value: usingSearchbar)`).
- **Dimmed Background**: A semi-transparent black overlay (`Color.black.opacity(...)`) dims the background when the search bar is active, enhancing focus.
- **No-Results View**: Displays a custom `NoSearchFoundView` when no fruits match the search criteria.
- **Platform-Specific Styling**: Applies padding and background styles conditionally for iOS (`#if os(iOS)`) to ensure a native look.

### Data Models
The `Fruit` struct and `FruitType` enum in `KeywordFruit.swift` are designed to work seamlessly with `SearchBar`:

- **`Fruit`**:
  - Properties: `name`, `description`, `type` (array of `FruitType`), and a computed `suggestion` for search integration.
  - Computed `iconName`: Derives an SF Symbol from the fruit’s first type or a default.
- **`FruitType`**:
  - Cases: `soft`, `hard`, `sweet`, `sour`, each with a unique `suggestion` including a title, description, icon, and optional `SearchBarToken`.
  - `suggestionDetails`: Provides tailored metadata for each type, enhancing the suggestion UI.

## Setup Instructions

To run the Fruits List sample project:

1. **Add the SearchBar Package**:
   - In Xcode, select **File > Add Package Dependency**.
   - Enter the package URL: `https://github.com/SzpakKamil/SearchBar.git`.
   - Specify the version or branch (e.g., `main` or a specific tag), then add the package.
   - Import the module: `import SearchBar`.

2. **Create Project Files**:
   - Add `ContentView.swift` and `KeywordFruit.swift` to your Xcode project.
   - Ensure the project’s deployment target is iOS 16.0+ or visionOS 1.0+ and uses Swift 6.0.

3. **Build and Run**:
   - Build the project in Xcode 15.0+.
   - Test on an iOS or visionOS simulator/device to explore the search functionality.

Alternatively, tap to open the complete project from the [Fruits List sample](https://assets.kamilszpak.com/SearchBar/FruitsList.zip).

## Troubleshooting

- **SearchBar not appearing?** Ensure the `SearchBar` package is correctly added to your project and imported in `ContentView.swift`.
- **Tokens not filtering?** Verify that `FruitType.suggestion` correctly provides `SearchBarToken` instances.
- **UI issues on visionOS?** Confirm the deployment target is visionOS 1.0+ in a visionOS simulator.
- **No suggestions displayed?** Check that `.searchBarSuggestions(.constant(FruitType.allCases.map(\.suggestion)))` is correctly set and that `FruitType` cases are properly defined.

## Next Steps

- Dive into available modifiers in <doc:Modifiers>.
- Refer to the ``SearchBar-2dti`` API documentation.
- Experiment with additional `FruitType` cases or custom `SearchBarSuggestion` configurations to extend the app’s functionality.
