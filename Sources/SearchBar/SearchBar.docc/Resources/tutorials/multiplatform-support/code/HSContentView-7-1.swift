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
        ...
    }
    
    ...
}

#Preview {
    ContentView()
}

