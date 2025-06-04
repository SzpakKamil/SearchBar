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
        ...
    }
    
    func recomputeNavigationTitle(isEditing: Bool) {
        ...
    }
    ...
}

#Preview {
    ContentView()
}

