//
//  Genre.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation
import SearchBar

enum Genre: Int, Identifiable, CaseIterable, Codable, Comparable, Equatable {
    ...
    var suggestion: SearchBarSuggestion {
        SearchBarSuggestion(
            text: name,
            description: description,
            systemName: systemImage,
            token: SearchBarToken(
                text: name,
                systemName: systemImage
            )
        )
    }
    ...
}
