//
//  SearchBarSuggestion.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public struct SearchBarSuggestion: Identifiable, Hashable, Comparable, Codable, Equatable {
    public let id: String
    public let text: String
    public let description: String?
    public let systemName: String?
    public let token: SearchBarToken?
    
    #if !os(macOS)
    @available(iOS 16.0, *)
    @MainActor
    public var suggestion: UISearchSuggestionItem {
    #if os(iOS)
        let image: UIImage?
        if let systemName = systemName {
            image = UIImage(systemName: systemName)
        } else {
            image = nil
        }
        return UISearchSuggestionItem(localizedAttributedSuggestion: NSAttributedString(string: text), localizedDescription: description, iconImage: image)
    #else
        return UISearchSuggestionItem(localizedSuggestion: text, localizedDescription: description)
    #endif
    }
    #endif
    
    public init(text: String, description: String? = nil, systemName: String? = nil) {
        self.id = "\(text)\(description ?? "")\(systemName ?? "")"
        self.text = text
        self.description = description
        self.systemName = systemName
        self.token = nil
    }
    public init(text: String, description: String? = nil, systemName: String? = nil, token: SearchBarToken? = nil) {
        self.id = "\(text)\(description ?? "")\(systemName ?? "")"
        self.text = text
        self.description = description
        self.systemName = systemName
        self.token = token
    }
    @_documentation(visibility: internal)
    public enum CodingKeys: String, CodingKey {
        case id
        case text
        case description
        case systemName
        case token
    }
    
    @_documentation(visibility: internal)
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.text = try container.decode(String.self, forKey: .text)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.systemName = try container.decodeIfPresent(String.self, forKey: .systemName)
        self.token = try container.decodeIfPresent(SearchBarToken.self, forKey: .token)
    }
    @_documentation(visibility: internal)
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(text, forKey: .text)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(systemName, forKey: .systemName)
        try container.encodeIfPresent(token, forKey: .token)
    }

    @_documentation(visibility: internal)
    public static func ==(lhs: SearchBarSuggestion, rhs: SearchBarSuggestion) -> Bool {
        lhs.id == rhs.id && lhs.token == rhs.token
    }
    @_documentation(visibility: internal)
    public static func <(lhs: SearchBarSuggestion, rhs: SearchBarSuggestion) -> Bool {
        if lhs.text == rhs.text{
            lhs.description ?? "" < rhs.description ?? ""
        }else{
            lhs.text < rhs.text
        }
    }
 
}
