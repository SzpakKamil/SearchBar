//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI

struct ContentView: View {
    ...
    var body: some View {
        let groups = Dictionary(grouping: movies, by: \.genre)
        let keys = groups.keys.sorted()
        NavigationStack{
            List{
                ForEach(keys){key in
                    Section(key.name) {
                        ForEach(groups[key] ?? []){
                            movieRow(for: $0)
                        }
                    }
                }
            }
            .navigationTitle("Searcher")
        }
    }
    
    func movieRow(for movie: Movie) -> some View {
        Label {
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.headline)
                Text(movie.description)
            }
        } icon: {
            Image(systemName: movie.genre.systemImage)
        }

    }
}

#Preview {
    ContentView()
}
