# Modifiers

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Structure")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarModifiers")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Learn about the modifiers available for customizing the `SearchBar` package in SwiftUI.

## Overview

The `SearchBar` package provides a variety of modifiers to customize its appearance, behavior, and interaction within SwiftUI applications. These modifiers are applied using SwiftUI’s dot syntax (e.g., `.searchBarStyle(_:)`), supporting accessibility features like VoiceOver and Dynamic Type. Below, modifiers are grouped by category, with platform-specific availability noted.

> Important: Some modifiers are exclusive to iOS, iPadOS, and visionOS, while others are available on macOS. Check each modifier’s availability for compatibility.

## Modifiers

### Appearance Modifiers
- ``SearchBar/SearchBar/searchBarStyle(_:)``: Applies a custom `SearchBarStyle` configuration. Available on iOS, iPadOS, visionOS, and macOS.
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:tokenBackground:backgroundColor:)``: Configures style with specific parameters including token background. Available on iOS and visionOS.
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:tokenBackground:backgroundColor:)``: Applies a predefined corner style with optional parameters including token background. Available on iOS and visionOS.
- ``SearchBar/SearchBar/searchBarStyle(cornerRadius:textColor:tint:backgroundColor:)``: Configures style with specific parameters. Available on macOS.
- ``SearchBar/SearchBar/searchBarStyle(_:textColor:tint:backgroundColor:)``: Applies a predefined corner style with optional parameters. Available on macOS.
- ``SearchBar/SearchBar/searchBarIconView(_:)``: Sets a custom icon view for the search bar. Available on iOS, iPadOS, visionOS, and macOS.
- ``SearchBar/SearchBar/searchBarIconView()``: Removes the custom icon view, setting it to an empty view. Available on iOS, iPadOS, visionOS, and macOS.
- ``SearchBar/SearchBar/searchBarMaterial(_:)``: Applies a material style (e.g., `solid` or `glass`) to the search bar. Available on iOS 26.0+, iPadOS 26.0+, and macOS 26.0+. Experimental “Liquid Glass” implementation.
- ``SearchBar/SearchBar/searchBarScale(_:)``: Adjusts padding from search bar elements to its border using a scale size (`small`, `medium`, `large`). Available on iOS 14.0+, iPadOS 14.0+, macOS 11.0+, and visionOS 1.0+.

### Input Configuration Modifiers (iOS, iPadOS, and visionOS only)
- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``: Sets the keyboard type (e.g., `.emailAddress`).
- ``SearchBar/SearchBar/searchBarReturnKeyType(_:)``: Configures the return key type (e.g., `.search`).
- ``SearchBar/SearchBar/searchBarAutoCorrectionType(_:)``: Controls autocorrection behavior, defaulting to `.default`.
- ``SearchBar/SearchBar/searchBarAutoCapitalizationType(_:)``: Sets autocapitalization behavior.
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``: Specifies the content type for autofill and keyboard suggestions.

### Event Handling Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``: Defines an action for the clear button. Available on iOS, iPadOS, visionOS, and macOS.
- ``SearchBar/SearchBar/searchBarBeginEditingAction(_:)``: Triggers an action when editing begins. Available on iOS 14.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 12.0+.
- ``SearchBar/SearchBar/searchBarEndEditingAction(_:)``: Triggers an action when editing ends. Available on iOS 14.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 12.0+.
- ``SearchBar/SearchBar/searchBarCancelButtonAction(_:)``: Defines an action for the cancel button. Available on iOS and visionOS.
- ``SearchBar/SearchBar/searchBarChangeAction(_:)``: Triggers an action when the search text changes. Available on iOS, iPadOS, visionOS, and macOS.

### Button Display Modifiers
- ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``: Configures when the clear button is shown. Available on iOS, iPadOS, visionOS, and macOS.
- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``: Configures when the cancel button is shown. Available on iOS, iPadOS, and visionOS.

### Tokens and Suggestions Modifiers
- ``SearchBar/SearchBar/searchBarCurrentTokens(_:)``: Manages a dynamic list of current tokens. Available on iOS 16.0+, iPadOS 14.0+, and visionOS 1.0+.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi``: Sets a binding to suggested tokens. Available on iOS 16.0+, iPadOS 14.0+, and visionOS 1.0+.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``: Sets a static list of suggested tokens. Available on iOS 16.0+, iPadOS 14.0+, and visionOS 1.0+.
- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-54f3``: Converts suggestions to tokens. Available on iOS 16.0+, iPadOS 14.0+, and visionOS 1.0+.
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-syi0``: Sets a binding to a list of suggestions. Available on iOS 16.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 15.0+.
- ``SearchBar/SearchBar/searchBarSuggestions(_:)-620nd``: Sets a static list of suggestions. Available on iOS 16.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 15.0+.
- ``SearchBar/SearchBar/searchBarEnableAutomaticSuggestionsFiltering(_:filteringAction:)``: Enables automatic suggestion filtering with an optional custom action. Available on iOS 16.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 15.0+.

### Focus Modifiers
- ``SearchBar/SearchBar/searchBarIsFocused(_:)``: Binds the focus state to a Boolean. Available on iOS 14.0+, iPadOS 14.0+, visionOS 1.0+, and macOS 12.0+.

## Example

Here’s an example combining multiple modifiers across platforms:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var isFocused = false
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarStyle(.rounded, textColor: .blue)
            .searchBarScale(.medium)
            .searchBarIconView { Image(systemName: "magnifyingglass") }
            .searchBarClearButtonAction { searchText = "" }
            .searchBarIsFocused($isFocused)
            #if os(iOS) || os(visionOS)
            .searchBarMaterial(.glass)
            .searchBarCancelButtonAction { isFocused = false }
            .searchBarKeyboardType(.webSearch)
            #endif
    }
}
```

## Next Steps

- Dive into detailed modifier documentation via the links above.
- Explore the `SearchBar` setup guide in <doc:SetUp>.
