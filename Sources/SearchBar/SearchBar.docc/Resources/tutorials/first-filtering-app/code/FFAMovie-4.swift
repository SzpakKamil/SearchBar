//
//  Movie.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation
import SearchBar

struct Movie: Identifiable, Codable, Comparable, Equatable {
    var id: String { title + description }
    var title: String
    var description: String
    var genre: Genre
    var releaseYear: Int?
    var rating: Double?
    
    var suggestion: SearchBarSuggestion {
        SearchBarSuggestion(text: title, description: "\(genre.name) - \(description) \(releaseYear.map { "(\($0))" } ?? "")", systemName: genre.systemImage)
    }
    
    static func < (lhs: Movie, rhs: Movie) -> Bool {
        lhs.title < rhs.title
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        lhs.id == rhs.id
    }
}
