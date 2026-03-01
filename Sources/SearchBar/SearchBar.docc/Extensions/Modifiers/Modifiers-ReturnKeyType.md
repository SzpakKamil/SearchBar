# ``SearchBar/searchBarReturnKeyType(_:)``

Configures the return key type for the `SearchBar`’s keyboard.

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
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

The `searchBarReturnKeyType(_:)` modifier sets the type of return key displayed on the keyboard when editing the `SearchBar`’s text. Available on iOS and visionOS, it supports types like `.search` or `.done` to match the search action.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIReturnKeyType` specifying the return key type (e.g., `.search`, `.done`).

## Example

```swift
import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarReturnKeyType(.search)
    }
}
```

This example sets the return key to “Search” on the keyboard.

@TabNavigator {
    @Tab("iOS") {
        Configure the return key type to indicate the action triggered when the user finishes typing.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Default-iOS", alt: "Default Return Key") {
                    Default Return Key
                }
            }
            @Tab("Go") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Go-iOS", alt: "Go Return Key") {
                    Go Return Key
                }
            }
            @Tab("Join") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Join-iOS", alt: "Join Return Key") {
                    Join Return Key
                }
            }
            @Tab("Next") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Next-iOS", alt: "Next Return Key") {
                    Next Return Key
                }
            }
            @Tab("Route") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Route-iOS", alt: "Route Return Key") {
                    Route Return Key
                }
            }
            @Tab("Search") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Search-iOS", alt: "Search Return Key") {
                    Search Return Key
                }
            }
            @Tab("Send") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Send-iOS", alt: "Send Return Key") {
                    Send Return Key
                }
            }
            @Tab("Yahoo") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Yahoo-iOS", alt: "Yahoo Return Key") {
                    Yahoo Return Key
                }
            }
            @Tab("Google") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Google-iOS", alt: "Google Return Key") {
                    Google Return Key
                }
            }
            @Tab("Emergency Call") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-EmergencyCall-iOS", alt: "Emergency Call Return Key") {
                    Emergency Call Return Key
                }
            }
            @Tab("Done") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Done-iOS", alt: "Done Return Key") {
                    Done Return Key
                }
            }
            @Tab("Continue") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Continue-iOS", alt: "Continue Return Key") {
                    Continue Return Key
                }
            }
        }
    }
    @Tab("iPadOS") {
        Adjust the return key to match your search bar's context and action.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Default-iPadOS", alt: "Default Return Key") {
                    Default Return Key
                }
            }
            @Tab("Go") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Go-iPadOS", alt: "Go Return Key") {
                    Go Return Key
                }
            }
            @Tab("Join") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Join-iPadOS", alt: "Join Return Key") {
                    Join Return Key
                }
            }
            @Tab("Next") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Next-iPadOS", alt: "Next Return Key") {
                    Next Return Key
                }
            }
            @Tab("Route") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Route-iPadOS", alt: "Route Return Key") {
                    Route Return Key
                }
            }
            @Tab("Search") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Search-iPadOS", alt: "Search Return Key") {
                    Search Return Key
                }
            }
            @Tab("Send") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Send-iPadOS", alt: "Send Return Key") {
                    Send Return Key
                }
            }
            @Tab("Yahoo") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Yahoo-iPadOS", alt: "Yahoo Return Key") {
                    Yahoo Return Key
                }
            }
            @Tab("Google") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Google-iPadOS", alt: "Google Return Key") {
                    Google Return Key
                }
            }
            @Tab("Emergency Call") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-EmergencyCall-iPadOS", alt: "Emergency Call Return Key") {
                    Emergency Call Return Key
                }
            }
            @Tab("Done") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Done-iPadOS", alt: "Done Return Key") {
                    Done Return Key
                }
            }
            @Tab("Continue") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Continue-iPadOS", alt: "Continue Return Key") {
                    Continue Return Key
                }
            }
        }
    }
    @Tab("visionOS") {
        Select a return key that best represents the expected spatial interaction result.

        @TabNavigator {
            @Tab("Default") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Default-visionOS", alt: "Default Return Key") {
                    Default Return Key
                }
            }
            @Tab("Go") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Go-visionOS", alt: "Go Return Key") {
                    Go Return Key
                }
            }
            @Tab("Join") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Join-visionOS", alt: "Join Return Key") {
                    Join Return Key
                }
            }
            @Tab("Next") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Next-visionOS", alt: "Next Return Key") {
                    Next Return Key
                }
            }
            @Tab("Route") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Route-visionOS", alt: "Route Return Key") {
                    Route Return Key
                }
            }
            @Tab("Search") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Search-visionOS", alt: "Search Return Key") {
                    Search Return Key
                }
            }
            @Tab("Send") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Send-visionOS", alt: "Send Return Key") {
                    Send Return Key
                }
            }
            @Tab("Yahoo") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Yahoo-visionOS", alt: "Yahoo Return Key") {
                    Yahoo Return Key
                }
            }
            @Tab("Google") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Google-visionOS", alt: "Google Return Key") {
                    Google Return Key
                }
            }
            @Tab("Emergency Call") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-EmergencyCall-visionOS", alt: "Emergency Call Return Key") {
                    Emergency Call Return Key
                }
            }
            @Tab("Done") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Done-visionOS", alt: "Done Return Key") {
                    Done Return Key
                }
            }
            @Tab("Continue") {
                @Image(source: "Documentation-SearchBarKeyboard-ReturnKeyType-Continue-visionOS", alt: "Continue Return Key") {
                    Continue Return Key
                }
            }
        }
    }
}

## See Also

- ``SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/searchBarTextContentType(_:)``
