//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var isSearching = false
    ...
    
    var body: some View {
        let groups = Dictionary(grouping: filteredMovies, by: \.genre)
        let keys = groups.keys.sorted()
        NavigationStack{
            ZStack(alignment: .bottom){
                ...
            }
            .navigationTitle("Searcher")
        }
        .animation(.smooth, value: searchText)
    }
}

#Preview {
    ContentView()
}

