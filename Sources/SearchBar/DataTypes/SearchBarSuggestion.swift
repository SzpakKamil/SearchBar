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
    
    public init(text: String, description: String? = nil, systemName: String? = nil, token: SearchBarToken? = nil) {
        self.id = "\(text)\(description ?? "")"
        self.text = text
        self.description = description
        self.systemName = systemName
        self.token = token
    }
    
    public init(text: String, description: String? = nil, systemName: String? = nil) {
        self.id = "\(text)\(description ?? "")"
        self.text = text
        self.description = description
        self.systemName = systemName
        self.token = nil
    }
    
    #if os(macOS)
    @available(macOS 15.0, *)
    public var suggestion: NSSuggestionItem<String> {
        NSSuggestionItem(representedValue: text, title: text)
    }
    #else
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
    public static func ==(lhs: SearchBarSuggestion, rhs: SearchBarSuggestion) -> Bool {
        lhs.id == rhs.id
    }
    
    public static func <(lhs: SearchBarSuggestion, rhs: SearchBarSuggestion) -> Bool {
        lhs.text == rhs.text
    }
 
}
