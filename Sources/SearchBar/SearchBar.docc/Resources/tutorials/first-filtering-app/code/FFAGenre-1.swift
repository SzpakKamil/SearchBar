//
//  Genre.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation

enum Genre: Int, Identifiable, CaseIterable, Codable, Comparable, Equatable {
    case action
    case adventure
    case animation
    case comedy
    case drama
    case fantasy
    case horror
    case romance
    case scienceFiction
    case documentary
    case thriller
    
    var id: Int { rawValue }
    
    // Add a default name for serialization
    var rawValueString: String {
        switch self {
        case .action: return "action"
        case .adventure: return "adventure"
        case .animation: return "animation"
        case .comedy: return "comedy"
        case .drama: return "drama"
        case .fantasy: return "fantasy"
        case .horror: return "horror"
        case .romance: return "romance"
        case .scienceFiction: return "scienceFiction"
        case .documentary: return "documentary"
        case .thriller: return "thriller"
        }
    }
    
    // Initialize from string for flexibility
    init?(rawValueString: String) {
        switch rawValueString.lowercased() {
        case "action": self = .action
        case "adventure": self = .adventure
        case "animation": self = .animation
        case "comedy": self = .comedy
        case "drama": self = .drama
        case "fantasy": self = .fantasy
        case "horror": self = .horror
        case "romance": self = .romance
        case "sciencefiction": self = .scienceFiction
        case "documentary": self = .documentary
        case "thriller": self = .thriller
        default: return nil
        }
    }
    
    static func < (lhs: Genre, rhs: Genre) -> Bool {
        lhs.id < rhs.id
    }
    
    static func == (lhs: Genre, rhs: Genre) -> Bool {
        lhs.id == rhs.id
    }
}
