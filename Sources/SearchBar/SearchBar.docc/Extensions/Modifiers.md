# Modifiers

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "6.0")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(
        purpose: icon, 
        source: "modifiers", 
        alt: "An icon of wand with sparkles inside circle.")
}

@Options{
    @AutomaticSeeAlso(disabled)
}

Learn about the modifiers available for customizing the `SearchBar` package in SwiftUI.

## Overview

The `SearchBar` package provides a set of modifiers to customize its appearance, input behavior, and functionality across iOS (14.0+), visionOS (1.0+), and macOS (11.0+). These modifiers use SwiftUI’s idiomatic dot syntax (e.g., `.searchBarStyle`) and are designed to respect accessibility features like VoiceOver and Dynamic Type. This page details all available modifiers, grouped by category, with platform-specific availability and notes.

> Important: Some modifiers are platform-specific (e.g., iOS/visionOS or macOS only). Always check the platform availability for each modifier to ensure compatibility.

## Modifiers

### Appearance Modifiers
- `.searchBarStyle(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil)`: Configures the search bar’s corner radius, text color, tint, token background, and background color. Available on iOS and visionOS.
- `.searchBarStyle(_ style: SearchBarCornerStyleDefaults = .rounded, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil)`: Applies a predefined style (e.g., `.rounded`) with optional overrides for text color, tint, token background, and background color. Available on iOS and visionOS.
- `.searchBarStyle(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil)`: Configures the search bar’s corner radius, text color, tint, and background color. Available on macOS only.
- `.searchBarStyle(_ style: SearchBarCornerStyleDefaults = .rounded, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil)`: Applies a predefined style (e.g., `.rounded`) with optional overrides for text color, tint, and background color. Available on macOS only.
- `.searchBarStyle(_ style: SearchBarStyle)`: Applies a custom `SearchBarStyle` configuration. Available on iOS, visionOS, and macOS.
- `.searchBarIconView(_ view: () -> some View)`: Sets a custom icon view for the search bar. Available on iOS, visionOS, and macOS.
- `.searchBarIconView()`: Removes the custom icon view, setting it to an empty view. Available on iOS, visionOS, and macOS.

### Input Configuration Modifiers (iOS and visionOS only)
- `.searchBarKeyboardType(_ type: UIKeyboardType)`: Configures the keyboard type (e.g., `.emailAddress`, `.numberPad`).
- `.searchBarReturnKeyType(_ type: UIReturnKeyType)`: Sets the return key type (e.g., `.search`, `.send`).
- `.searchBarAutoCorrectionType(_ type: UITextAutocorrectionType = .default)`: Controls autocorrection behavior.
- `.searchBarAutoCapitalizationType(_ type: UITextAutocapitalizationType)`: Configures autocapitalization behavior.
- `.searchBarTextContentType(_ type: UITextContentType)`: Sets the content type (e.g., `.emailAddress`) for autofill and keyboard suggestions.

### Event Handling Modifiers
- `.searchBarClearButtonAction(_ action: @escaping () -> Void)`: Defines an action to perform when the clear button is clicked. Available on iOS, visionOS, and macOS.
- `.searchBarBeginEditingAction(_ action: @escaping () -> Void)`: Triggers an action when editing begins. Available on iOS (14.0+), visionOS (1.0+), and macOS (12.0+).
- `.searchBarEndEditingAction(_ action: @escaping () -> Void)`: Triggers an action when editing ends. Available on iOS (14.0+), visionOS (1.0+), and macOS (12.0+).
- `.searchBarCancelButtonAction(_ action: @escaping () -> Void)`: Defines an action when the cancel button is clicked. Available on iOS and visionOS.
- `.searchBarChangeAction(_ action: @escaping (String) -> Void)`: Triggers an action when the search text changes. Available on iOS, visionOS, and macOS.

### Button Display Modifiers
- `.searchBarClearButtonDisplayMode(_ mode: SearchBarClearButtonDisplayMode)`: Configures the display behavior of the clear button. Available on iOS, visionOS, and macOS.
- `.searchBarCancelButtonDisplayMode(_ mode: SearchBarCancelButtonDisplayMode)`: Configures the display behavior of the cancel button. Available on iOS and visionOS.

### Tokens and Suggestions Modifiers
- `.searchBarCurrentTokens(_ tokens: Binding<[SearchBarToken]>)`: Configures tokens for filter categories. Available on iOS (16.0+) and visionOS (1.0+).
- `.searchBarSuggestedTokens(_ tokens: Binding<[SearchBarToken]>)`: Configures suggested tokens for selection. Available on iOS (16.0+) and visionOS (1.0+).
- `.searchBarSuggestedTokens(_ tokens: [SearchBarToken])`: Sets a static list of suggested tokens. Available on iOS (16.0+) and visionOS (1.0+).
- `.searchBarSuggestedTokens(_ suggestions: [SearchBarSuggestion])`: Sets a static list of suggestions as tokens. Available on iOS (16.0+) and visionOS (1.0+).
- `.searchBarSuggestions(_ suggestions: Binding<[SearchBarSuggestion]>)`: Sets a binding to a list of suggestions to display. Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).
- `.searchBarSuggestions(_ suggestions: [SearchBarSuggestion])`: Sets a static list of suggestions to display. Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).
- `.searchBarEnableAutomaticSuggestionsFiltering(_ value: Bool = true, filteringAction: ((String, SearchBarSuggestion) -> Bool)? = nil)`: Enables automatic filtering of suggestions based on input text, with an optional custom filtering action. Available on iOS (16.0+), visionOS (1.0+), and macOS (15.0+).

### Focus Modifiers
- `.searchBarIsFocused(_ value: Binding<Bool>)`: Binds the search bar’s focus state to a Boolean, controlling whether it is active. Available on iOS (14.0+), visionOS (1.0+), and macOS (12.0+).

## Example

The following example demonstrates a customized `SearchBar` with a combination of appearance, input, event-handling, and platform-specific modifiers, showcasing cross-platform customization for iOS, visionOS, and macOS:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var tokens: [SearchBarToken] = []
    @State private var isFocused = false
    
    var body: some View {
        SearchBar(text: $searchText, prompt: "Search")
            .searchBarStyle(.rounded, textColor: .blue)
            .searchBarClearButtonAction { print("Cleared search") }
            .searchBarChangeAction { newText in print("Text changed to: \(newText)") }
            .searchBarCurrentTokens($tokens)
            .searchBarSuggestions(.constant([
                SearchBarSuggestion(text: "Sweet", systemName: "star.fill"),
                SearchBarSuggestion(text: "Sour", systemName: "exclamationmark.triangle.fill")
            ]))
            .searchBarEnableAutomaticSuggestionsFiltering()
            .searchBarIconView { Image(systemName: "magnifyingglass") }
            #if os(iOS) || os(visionOS)
            .searchBarCancelButtonDisplayMode(.always)
            .searchBarCancelButtonAction {
                searchText = ""
                tokens = []
                isFocused = false
            }
            .searchBarKeyboardType(.emailAddress)
            .searchBarSuggestedTokens($tokens)
            #elseif os(macOS)
            .searchBarStyle(.square)
            #endif
            .searchBarIsFocused($isFocused)
            .searchBarBeginEditingAction { print("Editing began") }
            .searchBarEndEditingAction { print("Editing ended") }
    }
}
```

## Next Steps

- Explore the full ``SearchBar-2dti`` API documentation for detailed information on all modifiers and their usage.
- Build a sample app with <doc:FruitsList> to see modifiers in action.
- Learn how to set up the `SearchBar` package in <doc:SetUp>.
- Discover practical examples in <doc:ExampleUsage>.
