# ``SearchBar/SearchBarClearButtonDisplayMode/uiTextFieldViewMode``

Maps to `UITextField.ViewMode`.

@Metadata {
    @DisplayName("UITextFieldViewMode")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Maps cases to `UITextField.ViewMode`.
- Configures UIKit-based `SearchBar` implementations.
- Unavailable on macOS due to UIKit dependency.

## Example

```swift
import UIKit
import SearchBar

class SearchViewController: UIViewController {
    func configureSearchBar() {
        let searchBar = UISearchBar()
        let mode = SearchBarClearButtonDisplayMode.always
        searchBar.textField?.clearButtonMode = mode.uiTextFieldViewMode // Sets to UITextField.ViewMode.always
        view.addSubview(searchBar)
    }
}
```

## See Also

- ``SearchBarClearButtonDisplayMode``
- ``SearchBarClearButtonDisplayMode/never``
- ``SearchBarClearButtonDisplayMode/always``
- ``SearchBarClearButtonDisplayMode/whileEditing``
- ``SearchBarClearButtonDisplayMode/unlessEditing``
- ``SearchBar``
