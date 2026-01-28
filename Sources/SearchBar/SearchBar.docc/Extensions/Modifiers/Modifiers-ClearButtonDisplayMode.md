# ``SearchBar/SearchBar/searchBarClearButtonDisplayMode(_:)``

Configures the display behavior of the clear button in the `SearchBar`.

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

The `searchBarClearButtonDisplayMode(_:)` modifier determines when the clear button is visible in the `SearchBar`. Available on iOS, iPadOS, visionOS, and macOS, it supports modes like always visible or visible only while editing.

## Parameters

- `mode`: A `SearchBarClearButtonDisplayMode` specifying the display behavior (e.g., `.always`, `.whileEditing`).

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

This example shows the clear button only while the user is editing.

@TabNavigator {
    @Tab("iOS") {
        Choose when the clear button should be visible to provide a clean interface.

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
        Optimize the clear button's display for better accessibility.

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
        Select a clear button display mode for macOS that fits your desktop app's workflow.

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
        Select a mode for visionOS that optimizes spatial interaction with the clear button.

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
