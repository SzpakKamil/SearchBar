# ``SearchBar/SearchBarClearButtonDisplayMode/uiTextFieldViewMode``

A property that maps the `SearchBarClearButtonDisplayMode` to a `UITextField.ViewMode` for UIKit integration.

@Metadata {
    @DisplayName("UITextFieldViewMode")
    @Available(iOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

- Maps `SearchBarClearButtonDisplayMode` cases to `UITextField.ViewMode` values.
- Used to configure the clear button behavior in UIKit-based `SearchBar` implementations.
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
