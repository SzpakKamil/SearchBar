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
    
    var body: some View {
        ...
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
            .searchBarIconView{ Image(systemName: "book.pages.fill") }
            .searchBarClearButtonDisplayMode(.unlessEditing)
            .searchBarCancelButtonDisplayMode(.always)
            .searchBarReturnKeyType(.search)
            .searchBarAutoCorrectionType(.no)
            .searchBarTextContentType(.emailAddress)
            .searchBarSuggestions(movies.map(\.suggestion))
            #if !os(macOS)
            .searchBarCurrentTokens($currentTokens)
            .searchBarSuggestedTokens(Genre.allCases.map(\.suggestion))
            .searchBarStyle(.capsule, textColor: .blue, tint: .cyan, tokenBackground: .blue, backgroundColor: .blue.opacity(0.1))
            .searchBarCancelButtonDisplayMode(.always)
            #else
            .searchBarStyle(style: .capsule, textColor: .blue, tint: .cyan, backgroundColor: .blue.opacity(0.1))
            #endif
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
    
    ...
}

#Preview {
    ContentView()
}

