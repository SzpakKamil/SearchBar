//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var searchText = ""
    @State private var navigationTitle = "Searcher"
    ...
    
    var body: some View {
        SearchBar(text: $searchText)
            .searchBarBeginEditingAction {
                recomputeNavigationTitle(isEditing: true)
            }
            .searchBarEndEditingAction {
                recomputeNavigationTitle(isEditing: false)
            }
            .searchBarChangeAction{ searchText in
                filterMovies(for: searchText)
                recomputeNavigationTitle(isEditing: true)
            }
            .searchBarIsFocused($isSearching)
            .searchBarIconView{ Image(systemName: "book.pages.fill") }
            .searchBarClearButtonDisplayMode(.unlessEditing)
            .searchBarCancelButtonDisplayMode(.always)
            .searchBarReturnKeyType(.search)
            .searchBarAutoCorrectionType(.no)
            .searchBarTextContentType(.emailAddress)
            .searchBarStyle(.capsule, textColor: .blue, tint: .cyan, tokenBackground: .blue, backgroundColor: .blue.opacity(0.1))
            .searchBarSuggestions(movies.map(\.suggestion))
            .searchBarCurrentTokens($currentTokens)
            .searchBarSuggestedTokens(Genre.allCases.map(\.suggestion))
            .searchBarEnableAutomaticSuggestionsFiltering{ searchText, suggestion in
                guard !searchText.isEmpty && searchText.count != suggestion.text.count else {
                    return false
                }
                return suggestion.text
                    .localizedStandardContains(searchText)
            }
            .padding(.bottom, 20)
            .background(.bar)
    }
    
    func recomputeNavigationTitle(isEditing: Bool) {
        ...
    }
    ...
}

#Preview {
    ContentView()
}

