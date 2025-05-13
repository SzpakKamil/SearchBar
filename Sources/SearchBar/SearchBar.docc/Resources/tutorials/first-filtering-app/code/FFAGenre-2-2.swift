//
//  Genre.swift
//  Searcher
//
//  Created by KamilSzpak on 05/05/2025.
//

import Foundation

enum Genre: Int, Identifiable, CaseIterable, Codable, Comparable, Equatable {
    ...
    var name: String {
        switch self {
        case .action: return "Action"
        case .adventure: return "Adventure"
        case .animation: return "Animation"
        case .comedy: return "Comedy"
        case .drama: return "Drama"
        case .fantasy: return "Fantasy"
        case .horror: return "Horror"
        case .romance: return "Romance"
        case .scienceFiction: return "Science Fiction"
        case .documentary: return "Documentary"
        case .thriller: return "Thriller"
        }
    }

    var description: String {
        switch self {
        case .action: return "Action movies feature high-energy sequences, thrilling narratives, and dynamic action scenes."
        case .adventure: return "Adventure movies showcase epic quests, explorations, and thrilling journeys to exotic locales."
        case .animation: return "Animation movies bring imaginative worlds to life using advanced visual techniques."
        case .comedy: return "Comedy movies deliver humor and wit to entertain and amuse viewers."
        case .drama: return "Drama movies delve into deep emotional themes and complex human experiences."
        case .fantasy: return "Fantasy movies transport viewers to magical realms with mythical creatures and enchantments."
        case .horror: return "Horror movies build suspense and fear with chilling stories and eerie visuals."
        case .romance: return "Romance movies center on passionate relationships and heartfelt connections."
        case .scienceFiction: return "Science fiction movies explore futuristic concepts and innovative technologies."
        case .documentary: return "Documentary movies provide factual insights into real-world events and subjects."
        case .thriller: return "Thriller movies offer intense suspense and excitement with unpredictable twists."
        }
    }

    var systemImage: String {
        switch self {
        case .action: return "figure.run"
        case .adventure: return "map.fill"
        case .animation: return "film.fill"
        case .comedy: return "music.note"
        case .drama: return "book.fill"
        case .fantasy: return "wand.and.sparkles.fill"
        case .horror: return "moon.fill"
        case .romance: return "heart.fill"
        case .scienceFiction: return "lightbulb.fill"
        case .documentary: return "video.fill"
        case .thriller: return "bolt.fill"
        }
    }
    ...
}
