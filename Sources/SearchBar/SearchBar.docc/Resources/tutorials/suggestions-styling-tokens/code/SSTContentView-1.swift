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
            .searchBarSuggestions(movies.map(.suggestion))
            .padding(.bottom, 20)
            .background(.bar)
    ...
}

#Preview {
    ContentView()
}

