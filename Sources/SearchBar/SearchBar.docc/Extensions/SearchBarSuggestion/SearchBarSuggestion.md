# ``SearchBar/SearchBarSuggestion``

A type representing suggestions for enhancing search functionality in a `SearchBar`.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(macOS, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`SearchBarSuggestion` is a core component of the `SearchBar` package, used to provide search suggestions with a title, optional description, SF Symbol, and an optional embedded `SearchBarToken`. It integrates with `SearchBar` to offer users interactive suggestions for refining searches on iOS 16.0+ and visionOS 1.0+.

## Support

Below is an example of a struct using `SearchBarSuggestion`:

```swift
struct Fruit {
    var suggestions: [SearchBarSuggestion]
    
    init() {
        self.suggestions = [
            SearchBarSuggestion(text: "Sweet", description: "Like a candy", systemName: "star.fill"),
        ]
    }
}
```

## Conformances

### Identifiable
- Provides unique identification through the `id` property.
- Enables use in SwiftUI lists and collections requiring identity.

### Codable
- Supports encoding to and decoding from external formats (e.g., JSON).
- Enables suggestion persistence and data interchange.

### Equatable & Hashable
- Allows comparison based on `id`.
- Enables use in `Set` collections and as dictionary keys.
- Supports efficient deduplication and lookup.

### Comparable
- Enables sorting based on the `text` property.
- Supports alphabetical ordering of suggestion collections.

## Topics

### Properties
- ``SearchBarSuggestion/id``
- ``SearchBarSuggestion/text``
- ``SearchBarSuggestion/description``
- ``SearchBarSuggestion/systemName``
- ``SearchBarSuggestion/token``

### Initializers
- ``SearchBarSuggestion/init(text:description:systemName:)``
- ``SearchBarSuggestion/init(text:description:systemName:token:)``
