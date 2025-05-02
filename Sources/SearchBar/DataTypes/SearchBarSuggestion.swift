//
//  SearchBarSuggestion.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public struct SearchBarSuggestion: Equatable {
    let id = UUID()
    let title: String
    let description: String?
    let systemName: String?
    
    init(title: String, description: String? = nil, systemName: String? = nil) {
        self.title = title
        self.description = description
        self.systemName = systemName
    }
    
    #if os(macOS)
    @available(macOS 15.0, *)
    var suggestion: NSSuggestionItem<String> {
        NSSuggestionItem(representedValue: title, title: title)
    }
    #else
    @available(iOS 16.0, *)
    @MainActor
    var suggestion: UISearchSuggestionItem {
        #if os(iOS)
        let image: UIImage?
        if let systemName = systemName {
            image = UIImage(systemName: systemName)
        } else {
            image = nil
        }
        return UISearchSuggestionItem(localizedAttributedSuggestion: NSAttributedString(string: title), localizedDescription: description, iconImage: image)
        #else
        return UISearchSuggestionItem(localizedSuggestion: title, localizedDescription: description)
        #endif
    }
    #endif
    public static func ==(lhs: SearchBarSuggestion, rhs: SearchBarSuggestion) -> Bool {
        lhs.id == rhs.id
    }

}
