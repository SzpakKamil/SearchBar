# ``SearchBar``

Customizable Search Component

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticTitleHeading(enabled)
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBar` provides a SwiftUI search component for iOS, iPadOS, macOS, tvOS, watchOS, and visionOS. It uses `UIViewRepresentable` on iOS/visionOS and native SwiftUI on other platforms. Supports tokens, suggestions, and events.

@Image(source: "SearchBar-Banner.png", alt: "Searcher app on iPhone, iPad and MacBook with a sleek search bar.")

## Getting Started

@Links(visualStyle: detailedGrid) {
    - <doc:AboutSearchBar>
    - <doc:SetUp>
    - <doc:Modifiers>
    - <doc:FruitsList> 
}

## Topics

### Essentials
- <doc:AboutSearchBar>
- <doc:SetUp>
- <doc:Modifiers>


### Structures
- ``SearchBar/SearchBar``
- ``SearchBar/SearchBarToken``
- ``SearchBar/SearchBarSuggestion``

### Sample Projects
- <doc:FruitsList>
