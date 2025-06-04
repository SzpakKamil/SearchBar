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
    @State private var filteredMovies: [Movie] = []
    
    let movies: [Movie] = [
        ...
    ]
    
    var body: some View {
    ...
        NavigationStack{
            ...
        }
    ...
        
}

#Preview {
    ContentView()
}

