# ``SearchBar``

Native, Highly Customizable Search Component

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticTitleHeading(enabled)
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `SearchBar` package offers a SwiftUI-based search component for iOS, macOS, and visionOS, enabling developers to create intuitive, customizable search experiences. It leverages `UIViewRepresentable` for native integration on iOS, iPadOS, and visionOS, while on macOS, it reimplements the default search bar using SwiftUI views for enhanced flexibility and consistency. With support for search tokens, dynamic suggestions, and event handling, `SearchBar` empowers you to build modern, user-friendly search interfaces that adapt to your app’s unique needs.

@Image(source: "SearchBar-Tutorial-Banner.png", alt: "Searcher app on iPhone and iPad with a sleek search bar.")

Whether you’re adding token-based filtering, real-time suggestions, or custom styling, `SearchBar` provides a flexible API to enhance your app’s search functionality. Its accessibility features, like VoiceOver and Dynamic Type support, ensure an inclusive experience, while its extensive documentation makes integration straightforward. Explore the resources below to start building with `SearchBar` and see how it can transform user interactions in your app.

## Getting Started

@Links(visualStyle: detailedGrid) {
    - <doc:AboutSearchBar>
    - <doc:SetUp>
}

## Resources

@Links(visualStyle: detailedGrid) {
    - <doc:Modifiers>
}

## Sample Projects

@Links(visualStyle: detailedGrid) {
    - <doc:FruitsList> 
}

## Topics

### Essentials
- <doc:AboutSearchBar>
- <doc:SetUp>
- <doc:Modifiers>
- <doc:SearchBarTutorial>


### Structures
- ``SearchBar/SearchBar``
- ``SearchBar/SearchBarToken``
- ``SearchBar/SearchBarSuggestion``

### Sample Projects
- <doc:FruitsList>
