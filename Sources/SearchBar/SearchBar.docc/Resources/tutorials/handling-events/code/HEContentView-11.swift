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
        let navigationTitle = isSearching ? "Search results" : "Searcher"
        NavigationStack{
            ZStack(alignment: .bottom){
                ...
            }
            .navigationTitle(navigationTitle)
        }
        .animation(.smooth, value: filteredMovies)
    }
    ...
}

#Preview {
    ContentView()
}

