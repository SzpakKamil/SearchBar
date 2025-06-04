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
        let groups = Dictionary(grouping: filteredMovies, by: \.genre)
        let keys = groups.keys.sorted()
        let navigationTitle = isSearching ? "Search results" : "Searcher"
        NavigationStack{
            ...
        }
        .animation(.smooth, value: searchText)
    }
    ...
    
    func filterMovies(for text: String) {
        ...
    }
}

#Preview {
    ContentView()
}

