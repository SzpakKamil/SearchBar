# ``SearchBar/SearchBarSuggestion``

Represents search suggestions.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "16.0")
    @Available(visionOS, introduced: "1.0")
    @Available(macOS, introduced: "15.0")
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

`SearchBarSuggestion` provides interactive suggestions with title, description, SF Symbol, and optional `SearchBarToken`. Integrates with `SearchBar` on iOS 16.0+ and visionOS 1.0+.

## Usage

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
- Unique identification via `id`.

### Codable
- Supports encoding/decoding.

### Equatable & Hashable
- Compares based on `id`.

### Comparable
- Sorts by `text`.

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
