# ``SearchBar/SearchBar/searchBarReturnKeyType(_:)``

Configures the return key type.

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

`searchBarReturnKeyType(_:)` sets the return key type. Supported on iOS and visionOS.

> Note: This modifier is not supported on macOS due to platform-specific UI differences.

## Parameters

- `type`: A `UIReturnKeyType` value (e.g., `.search`, `.done`).

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

This sets the return key to “Search”.

@TabNavigator {
    @Tab("iOS") {
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

- ``SearchBar/SearchBar/searchBarKeyboardType(_:)``
- ``SearchBar/SearchBar/searchBarTextContentType(_:)``
