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
    
    #if !os(macOS) && !os(tvOS)
    @MainActor
    public var searchToken: UISearchToken {
        let token = UISearchToken(icon: UIImage(systemName: systemName), text: text)
        token.representedObject = id // Store id for identification
        return token
    }
    #endif
    public static func ==(lhs: SearchBarToken, rhs: SearchBarToken) -> Bool {
        lhs.id == rhs.id
    }
    public static func <(lhs: SearchBarToken, rhs: SearchBarToken) -> Bool {
        lhs.text < rhs.text
    }
}
