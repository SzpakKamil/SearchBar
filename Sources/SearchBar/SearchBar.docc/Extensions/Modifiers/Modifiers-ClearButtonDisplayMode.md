# ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``

Configures clear button visibility.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "11.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

`searchBarClearButtonDisplayMode(_:)` controls clear button visibility. Supported on iOS, iPadOS, visionOS, and macOS.

## Parameters

- `mode`: A `SearchBarClearButtonDisplayMode` value (e.g., `.always`, `.whileEditing`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarClearButtonDisplayMode(.whileEditing)
    }
}
```

This shows the clear button only while editing.

@TabNavigator {
    @Tab("iOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-iOS", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-iOS", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Unless Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-iOS", alt: "Unless Editing") {
                    Unless Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Never-iOS", alt: "Never") {
                    Never
                }
            }
        }
    }
    @Tab("iPadOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-iPadOS", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-iPadOS", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Unless Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-iPadOS", alt: "Unless Editing") {
                    Unless Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Never-iPadOS", alt: "Never") {
                    Never
                }
            }
        }
    }
    @Tab("macOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-macOSTahoe", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-macOSTahoe", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Unless Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-macOSTahoe", alt: "Unless Editing") {
                    Unless Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Never-macOSTahoe", alt: "Never") {
                    Never
                }
            }
        }
    }
    @Tab("visionOS") {
        @TabNavigator {
            @Tab("Always") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Always-visionOS", alt: "Always") {
                    Always
                }
            }
            @Tab("While Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-WhileEditing-visionOS", alt: "While Editing") {
                    While Editing
                }
            }
            @Tab("Unless Editing") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-UnlessEditing-visionOS", alt: "Unless Editing") {
                    Unless Editing
                }
            }
            @Tab("Never") {
                @Image(source: "Documentation-SearchBarDisplayModes-ClearButton-Never-visionOS", alt: "Never") {
                    Never
                }
            }
        }
    }
}

## See Also

- ``SearchBar/SearchBar/searchBarClearButtonAction(_:)``
- ``SearchBar/SearchBar/searchBarCancelButtonDisplayMode(_:)``
