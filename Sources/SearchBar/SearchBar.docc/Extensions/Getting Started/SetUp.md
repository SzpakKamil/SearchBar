# Set Up

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarSetUp")
}

@Options{
    @AutomaticSeeAlso(disabled)
}

Learn how to integrate the `SearchBar` package into your SwiftUI project.

## Overview

The `SearchBar` package provides a customizable SwiftUI search bar for iOS, macOS, and visionOS. This guide explains how to add the package using Swift Package Manager (SPM).

## Adding SearchBar to Your Project

Add the `SearchBar` package to your project via Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependency**.
2. Enter the package URL: `https://github.com/SzpakKamil/SearchBar.git`.
3. Select a version (e.g., a specific tag) or use the `main` branch, then click **Add Package**.
4. Ensure your project uses Swift 6.0 for compatibility.
5. Import the module in your SwiftUI view:

   ```swift
   import SearchBar
   ```

For setup instructions, supported versions, and contribution guidelines, see the README at https://github.com/SzpakKamil/SearchBar.

### Example Integration

Here’s a minimal example of using `SearchBar` in a SwiftUI view:

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText, prompt: "Search")
            .searchBarChangeAction { print("Searching: \($0)") }
    }
}
```

This creates a basic search bar that prints the search text when submitted.

## Troubleshooting

- **Package not found**: Verify the URL (`https://github.com/SzpakKamil/SearchBar.git`) and your internet connection.
- **Dependency issues**: Confirm the version or branch exists in the repository. Try the `main` branch if unsure.
- **Module not recognized**: Ensure the package is added to your project’s target and `import SearchBar` is included.
- **Compatibility errors**: Check that your project’s deployment target meets iOS 14.0+, visionOS 1.0+, or macOS 11.0+.

## Next Steps

- Build a sample app with <doc:FruitsList>.
- Learn framework with <doc:SearchBarTutorial> tutorial.
