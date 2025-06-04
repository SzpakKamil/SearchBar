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
        NavigationStack{
            ZStack(alignment: .bottom){
                List{
                    ...
                }
                .safeAreaPadding(.bottom, 80)
                
                #if !os(visionOS)
                searchBarImplementation()
                #endif
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

