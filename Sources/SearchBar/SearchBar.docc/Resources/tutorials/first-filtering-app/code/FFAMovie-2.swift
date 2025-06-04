//
//  Movie.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation

struct Movie: Identifiable, Codable {
    var id: String { title + description }
    var title: String
    var description: String
}
