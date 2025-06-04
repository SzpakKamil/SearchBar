//
//  SearchBarToken.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public struct SearchBarToken: Identifiable, Codable, Comparable, Hashable, Equatable {
    public let id: String
    public let text: String
    public let systemName: String
    
    public init(text: String, systemName: String) {
        self.id = "\(text)\(systemName)"
        self.text = text
        self.systemName = systemName
    }
    
    @_documentation(visibility: internal)
    private enum CodingKeys: String, CodingKey {
        case id
        case text
        case systemName
    }

    @_documentation(visibility: internal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let decodedText = try container.decode(String.self, forKey: .text)
        let decodedSystemName = try container.decode(String.self, forKey: .systemName)
        
        // Derive id from text and systemName to maintain consistency with init(text:systemName:)
        self.id = "\(decodedText)\(decodedSystemName)"
        self.text = decodedText
        self.systemName = decodedSystemName
    }

    @_documentation(visibility: internal)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(text, forKey: .text)
        try container.encode(systemName, forKey: .systemName)
    }
    
    #if !os(macOS) && !os(tvOS)
    @MainActor
    public var searchToken: UISearchToken {
        let token = UISearchToken(icon: UIImage(systemName: systemName), text: text)
        token.representedObject = id // Store id for identification
        return token
    }
    #endif
    @_documentation(visibility: internal)
    public static func ==(lhs: SearchBarToken, rhs: SearchBarToken) -> Bool {
        lhs.id == rhs.id
    }
    @_documentation(visibility: internal)
    public static func <(lhs: SearchBarToken, rhs: SearchBarToken) -> Bool {
        lhs.text < rhs.text
    }
}
