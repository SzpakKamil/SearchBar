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
        
    func filterMovies(for text: String) {
        let trimmedSearchText = searchText.trimmingCharacters(in: .whitespaces)
        guard !trimmedSearchText.isEmpty && !currentTokens.isEmpty else{
            filteredMovies = movies
            return
        }
        if trimmedSearchText.isEmpty{
            filteredMovies = movies.filter{ currentTokens.contains($0.genre.suggestion.token!) }
        }else if currentTokens.isEmpty{
            filteredMovies = movies.filter{ $0.title.localizedStandardContains(trimmedSearchText)}
        }else{
            filteredMovies = movies.filter {
                $0.title.localizedStandardContains(searchText.trimmingCharacters(in: .whitespaces)) && currentTokens.contains($0.genre.suggestion.token!)
            }
        }
    }
}

#Preview {
    ContentView()
}

