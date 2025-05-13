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
    @ViewBuilder
    private func searchBarImplementation() -> some View{
        SearchBar(text: $searchText)
            ...
            .padding(.bottom, 20)
            .background(.bar)
    }
    
    ...
}

#Preview {
    ContentView()
}

