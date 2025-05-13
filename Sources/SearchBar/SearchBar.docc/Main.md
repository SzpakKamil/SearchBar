# ``SearchBar``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "6.0")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
    @PageImage(
        purpose: icon, 
        source: "searchBarIcon", 
        alt: "A technology icon representing the SearchBar framework.")
}

@Options {
    @AutomaticTitleHeading(enabled)
}

Native, Highly Customizable Search Component

## Overview

The `SearchBar` package provides a customizable, SwiftUI-based search bar component for iOS, visionOS, and macOS platforms. It integrates seamlessly with SwiftUI's declarative syntax, offering features like search tokens, suggestions, and event handling for a polished user experience. The component is designed to adapt to platform-specific behaviors while maintaining a consistent API across supported operating systems.

Key features include:
- **Cross-Platform Support**: Works on iOS, visionOS, and macOS with platform-specific implementations (`UIViewRepresentable` for iOS/visionOS, `NSViewRepresentable` for macOS).
- **Search Tokens**: Add and manage tokens (on iOS/visionOS) to represent search filters or categories.
- **Suggestions**: Provide dynamic search suggestions with optional automatic filtering based on user input.
- **Event Handling**: Respond to user interactions like text changes, search initiation, editing start/end, and clearing the search bar.
- **Customization**: Extensive styling options, including text color, background color, keyboard types (iOS/visionOS), bezel styles (macOS), and capsule style (visionOS).

The package is structured to be extensible, with modifier methods for configuring behavior and appearance, and includes data structures (`SearchBarToken`, `SearchBarSuggestion`) for tokens and suggestions.

## Tutorials

The `SearchBar` package includes a comprehensive tutorial, "Elevate Your App’s Search Experience," to help you integrate and enhance search functionality in your app. The tutorial guides you through building the Searcher app, a dynamic, filterable app showcasing the `SearchBar` component's capabilities.

- **Crafting the Searcher App from Scratch**: Build a filterable app from the ground up, enabling users to browse and search content with precision.  
- **Enhancing with Suggestions, Styling, and Tokens**: Elevate the Searcher app with dynamic suggestions, custom styling, and token-based filtering for a refined user experience.  
- **Mastering SearchBar Event Handling**: Learn to handle user interactions like beginning/ending editing, tapping the clear button, and canceling searches for a responsive interface.  

## Getting Started

@Links(visualStyle: detailedGrid) {
    - <doc:MeetSearchBar>
    - <doc:SetUp>
}
## Resources 

@Links(visualStyle: detailedGrid) {
    - <doc:Modifiers>
    - <doc:SearchBarTutorial>
}

## Sample Projects

@Links(visualStyle: detailedGrid) {
    - <doc:FruitsList>
}

## Topics

### Getting Started
- <doc:MeetSearchBar>
- <doc:SetUp>

### Implementations
- <doc:Modifiers>

### Tutorials
- <doc:SearchBarTutorial>

### Sample Projects
- <doc:FruitsList>

### Models
- ``SearchBar/SearchBar``
- ``SearchBar/SearchBarToken``
- ``SearchBar/SearchBarSuggestion``
