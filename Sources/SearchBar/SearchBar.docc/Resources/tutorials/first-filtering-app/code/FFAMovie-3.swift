//
//  Movie.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation

struct Movie: Identifiable, Codable, Comparable, Equatable {
    var id: String { title + description }
    var title: String
    var description: String
    
    static func < (lhs: Movie, rhs: Movie) -> Bool {
        lhs.title < rhs.title
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        lhs.id == rhs.id
    }
}
