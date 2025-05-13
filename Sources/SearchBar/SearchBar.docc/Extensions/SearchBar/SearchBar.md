# ``SearchBar/SearchBar``

Native SwiftUI Search Bar View

## Overview

The `SearchBar` struct is a SwiftUI view that provides a native search bar interface for iOS, visionOS, and macOS. It uses `UIViewRepresentable` to wrap a `UISearchBar` on iOS and visionOS, and `NSViewRepresentable` to wrap an `NSSearchField` on macOS, ensuring platform-appropriate behavior while offering a consistent SwiftUI API.

### Key Features
- **Cross-Platform Compatibility**: Supports iOS (14.0+), visionOS (1.0+), and macOS (11.0+) with native UI components.
- **Search Tokens**: On iOS and visionOS, supports `SearchBarToken` for representing search filters or categories (not available on macOS).
- **Suggestions**: Displays dynamic `SearchBarSuggestion` items with optional automatic filtering (iOS 16.0+, visionOS 16.0+, macOS 15.0+).
- **Event Handling**: Configurable actions for text changes, search initiation, editing start/end, and clearing the search bar.
- **Customization**: Offers extensive styling options, including text color, background color, border style (iOS/visionOS), bezel style (macOS), and more.

### Platform-Specific Behavior
- **iOS/visionOS**: Integrates `UISearchBar` with token support, a cancel button, and suggestions. visionOS supports a rounded corner style via `searchBarWithRoundedCorners(_:)`. Additional customization includes keyboard types, autocorrection, and token background colors.
- **macOS**: Integrates `NSSearchField` with a rounded bezel style and suggestion support (macOS 15.0+), but does not support tokens. Limited to bezel style and text content type customization.

## System Requirements
- Swift 6.0
- iOS 14.0+
- macOS 11.0+
- visionOS 1.0+

## Usage

### Basic Setup
Initialize with a binding to a text string and an optional prompt:
```swift
@State private var searchText = ""
var body: some View {
    SearchBar(text: $searchText, prompt: "Search")
}
```

### Adding Tokens (iOS/visionOS)
Configure tokens for search filters:
```swift
@State private var tokens = [SearchBarToken(title: "Filter", systemName: "line.3.horizontal")]
SearchBar(text: $searchText)
    .searchBarCurrentTokens($tokens)
```

### Adding Suggestions
Provide suggestions with automatic filtering:
```swift
@State private var suggestions = [
    SearchBarSuggestion(title: "Apple", description: "Fruit", systemName: "apple.logo")
]
SearchBar(text: $searchText)
    .searchBarSuggestions($suggestions)
    .searchBarEnableAutomaticSuggestionsFiltering()
```

### Handling Events
Attach actions for user interactions:
```swift
SearchBar(text: $searchText)
    .searchBarOnSearchPerform { print("Search performed") }
    .searchBarOnClearPerform { print("Search cleared") }
```

### Customizing Appearance
Apply platform-specific styling, such as text color or background:
```swift
SearchBar(text: $searchText)
    .searchBarTextColor(.blue)
    .searchBarBackgroundColor(.gray.opacity(0.2)) // iOS/visionOS only
```

## Topics

### Initialization
- ``SearchBar/init(text:prompt:)``
  - Initializes the search bar with a text binding and optional prompt.

### Event Handlers
- ``SearchBar/searchBarOnClearPerform(_:)``
  - Sets an action to perform when the search bar is cleared.
- ``SearchBar/searchBarOnBeginEditingPerform(_:)``
  - Sets an action to perform when editing begins.
- ``SearchBar/searchBarOnEndEditingPerform(_:)``
  - Sets an action to perform when editing ends.
- ``SearchBar/searchBarOnSearchPerform(_:)``
  - Sets an action to perform when the search button is clicked (iOS/visionOS) or text changes (macOS).

### Tokens and Suggestions
- ``SearchBar/searchBarCurrentTokens(_:)``
  - Configures tokens for the search bar (iOS/visionOS only).
- ``SearchBar/searchBarSuggestions(_:)``
  - Sets the list of suggestions to display (iOS 16.0+, visionOS 16.0+, macOS 15.0+).
- ``SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:)``
  - Enables automatic filtering of suggestions based on input text.

### Appearance Customization
- ``SearchBar/searchBarTextColor(_:)``
  - Sets the text color of the search bar.
- ``SearchBar/searchBarBackgroundColor(_:)``
  - Sets the background color of the search bar (iOS/visionOS only).
- ``SearchBar/searchBarTokenBackgroundColor(_:)``
  - Sets the background color of tokens (iOS/visionOS only).
- ``SearchBar/searchBarTintColor(_:)``
  - Sets the tint color for the search bar’s cursor and interactive elements (iOS/visionOS only).

### Input Configuration (iOS/visionOS)
- ``SearchBar/searchBarBorderStyle(_:)``
  - Sets the border style of the search bar, with `.bezel` rendering as a capsule on visionOS (iOS/visionOS only).
- ``SearchBar/searchBarReturnKeyType(_:)``
  - Sets the return key type for the keyboard (iOS/visionOS only).
- ``SearchBar/searchBarKeyboardType(_:)``
  - Sets the keyboard type for text input (iOS/visionOS only).
- ``SearchBar/searchBarAutoCorrectionType(_:)``
  - Sets the autocorrection behavior for text input (iOS/visionOS only).
- ``SearchBar/searchBarAutoCapitalizationType(_:)``
  - Sets the autocapitalization behavior for text input (iOS/visionOS only).
- ``SearchBar/searchBarTextContentType(_:)``
  - Sets the content type for text input, aiding autofill and keyboard suggestions (iOS/visionOS and macOS).

### macOS-Specific Customization
- ``SearchBar/searchBarBezelStyle(_:)``
  - Sets the bezel style of the search bar (macOS only).

### Supporting Types
- ``SearchBarToken``
- ``SearchBarSuggestion``
