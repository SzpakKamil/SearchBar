# ``SearchBar/SearchBarToken``

Represents filter/suggestion tokens.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarToken` represents tokens for filtering or suggestions. Integrates with token modifiers and `SearchBarSuggestion`.

## Usage

```swift
struct User {
    var tokens: [SearchBarToken]
    
    // Example initialization
    init() {
        self.tokens = [
            SearchBarToken(text: "Male", systemName: "person.fill"),
        ]
    }
}
```

## Modifiers

- ``SearchBar/SearchBar/searchBarCurrentTokens(_:)`` 
    Configures filter tokens.  
    - Parameters:  
      - `tokens`: A `Binding<[SearchBarToken]>` to manage the current tokens.  
    - Availability: iOS 16.0+, visionOS 1.0+.

- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi`` 
    Configures selection suggestions.  
    - Parameters:  
      - `tokens`: A `Binding<[SearchBarToken]>` to manage suggested tokens.  
    - Availability: iOS 16.0+, visionOS 1.0+.

- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
    Sets static suggestions.  
    - Parameters:  
      - `tokens`: An `[SearchBarToken]` array for static suggestions.  
    - Availability: iOS 16.0+, visionOS 1.0+.

## Conformances

### Identifiable
- Unique identification via `id`.

### Codable
- Supports encoding/decoding.

### Equatable & Hashable
- Compares based on `id`.

### Comparable
- Sorts by `text`.

## Topics

### Properties

- ``SearchBarToken/id``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``

### Initializers

- ``SearchBarToken/init(text:systemName:)``
