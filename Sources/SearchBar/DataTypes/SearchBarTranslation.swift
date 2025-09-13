//
//  SearchBarTranslation.swift
//  SearchBar
//
//  Created by Kamil Szpak on 13/09/2025.
//

import Foundation

enum SearchBarTranslation{
    case prompt
    
    var value: String{
        switch self{
        case .prompt:
            if #available(iOS 15, macOS 12.0, *) {
                return String(
                    localized: "SearchBarTranslation.Prompt",
                    defaultValue: "Search",
                    bundle: Bundle.module
                )
            } else {
                return NSLocalizedString("SearchBarTranslation.Prompt", bundle: .module, value: "Search", comment: "Default Prompt for SearchBar")
            }
        }
    }
}
