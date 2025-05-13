//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI
import SearchBar

struct ContentView: View {
    ...
        SearchBar(text: $searchText)
            .searchBarSuggestions(movies.map(\.suggestion))
            .searchBarEnableAutomaticSuggestionsFiltering{ searchText, suggestion in
                guard !searchText.isEmpty && searchText.count != suggestion.text.count else {
                    return false
                }
                return suggestion.text
                    .localizedStandardContains(searchText)
            }
            .padding(.bottom, 20)
            .background(.bar)
    ...
}

#Preview {
    ContentView()
}

