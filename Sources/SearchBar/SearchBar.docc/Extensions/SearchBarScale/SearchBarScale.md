# ``SearchBar/SearchBarScale``

An enumeration that specifies the size scale for a `SearchBar` view.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

The `SearchBarScale` enum defines the size scale for a `SearchBar` view, supporting three cases: `small`, `medium`, and `large`. It conforms to `Identifiable`, `Equatable`, and `Hashable`, making it suitable for SwiftUI views and data models. Available on iOS 14.0+, iPadOS 14.0+, and macOS 11.0+, this enum adjusts the search bar’s height and corner radius using the `heightMultiplier` and `cornerScale` properties.

The `heightMultiplier` varies by platform and iOS version:
- On macOS, it is 1, 2, or 3 for `small`, `medium`, and `large`, respectively.
- On iOS and iPadOS (pre-iOS 26.0), it is 1.0, 0.8, and 0.9 for `small`, `medium`, and `large`, respectively.
- On iOS and iPadOS (iOS 26.0+), it is 0.82, 0.77, and 0.8 for `small`, `medium`, and `large`, respectively.

The `cornerScale` adjusts the corner radius:
- For `small`, it is 1.0.
- For `medium`, it is 1.2 (pre-iOS 26.0) or 1.35 (iOS 26.0+).
- For `large`, it is 1.4 (across all versions).

The scale is applied using the `.searchBarScale(_:)` modifier. The table below summarizes the available scales, their IDs, and descriptions.

> Important: This type is unavailable on visionOS.

### Scale Grid
| Scale Name | ID | Description |
|------------|----|-------------|
| Small      | 0  | A compact search bar size, ideal for minimalistic interfaces. |
| Medium     | 1  | A balanced search bar size, suitable for most standard layouts. |
| Large      | 2  | An expanded search bar size, designed for prominent or touch-friendly interfaces. |

### Example Usage
```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarScale(.medium)
            .searchBarMaterial(.glass)
    }
}
```
