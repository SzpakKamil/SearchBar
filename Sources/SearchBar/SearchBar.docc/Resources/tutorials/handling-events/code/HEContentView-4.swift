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
    
    let movies: [Movie] = [
        ...
    ]
    
    var filteredMovies: [Movie] {
        let trimmedSearchText = searchText.trimmingCharacters(in: .whitespaces)
        if trimmedSearchText.isEmpty && currentTokens.isEmpty{
            return movies
        }else if trimmedSearchText.isEmpty{
            return movies.filter{ currentTokens.contains($0.genre.suggestion.token!) }
        }else if currentTokens.isEmpty{
            return movies.filter{ $0.title.localizedStandardContains(trimmedSearchText)}
        }else{
            return movies.filter {
                $0.title.localizedStandardContains(searchText.trimmingCharacters(in: .whitespaces)) && currentTokens.contains($0.genre.suggestion.token!)
            }
        }
    }
    
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

