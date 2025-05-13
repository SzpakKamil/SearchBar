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
    ...
        NavigationStack{
            ZStack(alignment: .bottom){
                List{
                    if keys.isEmpty{
                        if currentTokens.isEmpty{
                            Label("No Results found for \"\(searchText.trimmingCharacters(in: .whitespaces))\"", systemImage: "magnifyingglass")
                        }else if searchText.isEmpty{
                            Label("No Results found for token\(currentTokens.count > 1 ? "s" : "") \(currentTokens.map(\.text).joined())", systemImage: "magnifyingglass")
                        }else{
                            Label("No Results found for \"\(searchText.trimmingCharacters(in: .whitespaces))\" and token\(currentTokens.count > 1 ? "s" : "") \(currentTokens.map(\.text).joined(separator: ", "))", systemImage: "magnifyingglass")
                        }
                    }else{
                        ForEach(keys){key in
                            Section(key.name) {
                                ForEach(groups[key] ?? []){
                                    movieRow(for: $0)
                                }
                            }
                        }
                    }
    ...
}

#Preview {
    ContentView()
}

