# ``SearchBar/SearchBarToken``

A type representing tokens used to manage filter categories and suggestions.
@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(iPadOS, introduced: "16.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "14.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarToken` is a key component of the `SearchBar` package, representing tokens for filter categories or suggested selections to enhance search functionality. It integrates with modifiers for token-based filtering and suggestions, and can be embedded in `SearchBarSuggestion` for customized search experiences.

## Support

Below is an example of a struct with a `SearchBarToken` property:

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

## Implementation

- ``SearchBar/SearchBar/searchBarCurrentTokens(_:)`` 
    Configures tokens for filter categories.  
    - Parameters:  
      - `tokens`: A `Binding<[SearchBarToken]>` to manage the current tokens.  
    - Availability: iOS 16.0+, visionOS 1.0+.

- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-5wxi`` 
    Configures suggested tokens for selection.  
    - Parameters:  
      - `tokens`: A `Binding<[SearchBarToken]>` to manage suggested tokens.  
    - Availability: iOS 16.0+, visionOS 1.0+.

- ``SearchBar/SearchBar/searchBarSuggestedTokens(_:)-6o8fa``
    Sets a static list of suggested tokens.  
    - Parameters:  
      - `tokens`: An `[SearchBarToken]` array for static suggestions.  
    - Availability: iOS 16.0+, visionOS 1.0+.

## Conformances

### Identifiable
- Provides unique identification through the `id` property.
- Enables use in SwiftUI lists and collections that require identity.

### Codable
- Supports encoding to and decoding from external formats (JSON, property lists).
- Enables token persistence and data interchange.

### Equatable & Hashable
- Allows comparison between tokens based on their `id`.
- Enables use in `Set` collections and as dictionary keys.
- Supports efficient deduplication and lookup operations.

### Comparable
- Enables sorting based on the `text` property.
- Allows alphabetical ordering of token collections.

## Topics

### Properties

- ``SearchBarToken/id``
- ``SearchBarToken/text``
- ``SearchBarToken/systemName``

### Initializers

- ``SearchBarToken/init(text:systemName:)``
