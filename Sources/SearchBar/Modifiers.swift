//
//  Modifiers.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import SwiftUI

extension SearchBar {
#if os(visionOS)
    @ViewBuilder
    func searchBarWithRoundedCorners(_ value: Bool = true) -> SearchBar {
        self.updateSearchBarRounded(value)
    }
#endif
    
    
    
#if !os(macOS) && !os(tvOS)
    @ViewBuilder
    func searchBarCurrentTokens(_ tokens: Binding<[SearchBarToken]>) -> SearchBar {
        self.updateSearchTokens(tokens)
    }
#endif
    
    @ViewBuilder
    func searchBarOnClearPerform(_ action: @escaping () -> Void) -> SearchBar {
        self.updatePerformOnClear(action)
    }
    
    @ViewBuilder
    func searchBarOnBeginEditingPerform(_ action: @escaping () -> Void) -> SearchBar {
        self.updatePerformOnBeginEditing(action)
    }
    
    @ViewBuilder
    func searchBarOnEndEditingPerform(_ action: @escaping () -> Void) -> SearchBar {
        self.updatePerformOnEndEditing(action)
    }
    
    @ViewBuilder
    func searchBarOnSearchPerform(_ action: @escaping () -> Void) -> SearchBar {
        self.updatePerformOnSearch(action)
    }
    
    @ViewBuilder
    func searchBarEnableAutomaticSuggestionsFiltering(_ value: Bool = true) -> SearchBar {
        self.updateEnableAutomaticSuggestionFiltering(value)
    }
    @ViewBuilder
    func searchBarSuggestions(_ suggestions: Binding<[SearchBarSuggestion]>) -> SearchBar {
        self.updateSearchSuggestions(suggestions)
    }
}
