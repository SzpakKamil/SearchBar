//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI
import SearchBar

struct ContentView: View {
    @State private var navigationTitle = "Searcher"
    ...
    var body: some View {
        ...
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

