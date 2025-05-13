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
    ...
    var filteredMovies: [Movie] {
        guard !searchText.isEmpty else {
            return movies
        }
        return movies.filter {
            $0.title.localizedStandardContains(searchText)
        }
    }
    var body: some View {
        let groups = Dictionary(grouping: filteredMovies, by: \.genre)
        let keys = groups.keys.sorted()
        NavigationStack{
            ZStack(alignment: .bottom){
                List{
                    ForEach(keys){key in
                        Section(key.name) {
                            ForEach(groups[key] ?? []){
                                movieRow(for: $0)
                            }
                        }
                    }
                }
                .safeAreaPadding(.bottom, 80)
                
                SearchBar(text: $searchText)
                    .padding(.bottom, 20)
                    .background(.bar)
            }
            .navigationTitle("Searcher")
        }
        .animation(.smooth, value: searchText)
    }
    ...
}

#Preview {
    ContentView()
}
