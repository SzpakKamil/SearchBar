# Set Up

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(tvOS, introduced: "15.0")
    @Available(watchOS, introduced: "10.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "SearchBarSetUp")
}

@Options{
    @AutomaticSeeAlso(disabled)
}

Integrate `SearchBar` into your SwiftUI project.

## Overview

`SearchBar` provides a customizable SwiftUI search bar for iOS, iPadOS, macOS, and visionOS. Add it using Swift Package Manager (SPM).

## Installing Agent Skill
Install the SearchBar skill for expert guidance in your terminal.

### Using skills.sh:
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill SearchBar
```

### Using ClawdHub:
```bash
npx dlx clawdhub@latest install searchbar
```

## Adding SearchBar to Your Project

Add `SearchBar` via Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependency**.
2. Enter the package URL: `https://github.com/SzpakKamil/SearchBar.git`.
3. Select a version (e.g., a specific tag) or use the `main` branch, then click **Add Package**.
4. Ensure your project uses Swift 5.9+ for compatibility.
5. Import the module in your SwiftUI view:

   ```swift
   import SearchBar
   ```

For setup instructions, supported versions, and contribution guidelines, see the README at https://github.com/SzpakKamil/SearchBar.

### Example Integration

Use `SearchBar` in a SwiftUI view:

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

## Troubleshooting

- **Package not found**: Verify the URL (`https://github.com/SzpakKamil/SearchBar.git`) and internet connection.
- **Dependency issues**: Confirm the version or branch exists. Try `main` if unsure.
- **Module not recognized**: Ensure the package is added to the target and `import SearchBar` is included.
- **Compatibility errors**: Check deployment targets: iOS 14.0+, visionOS 1.0+, macOS 11.0+.

## Next Steps

- Build a sample app with <doc:FruitsList>.
