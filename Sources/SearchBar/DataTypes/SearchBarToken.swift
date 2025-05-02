//
//  SearchBarToken.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public struct SearchBarToken: Equatable {
    let id = UUID()
    let title: String
    let systemName: String
    
    #if !os(macOS)
    @MainActor
    var searchToken: UISearchToken {
        let token = UISearchToken(icon: UIImage(systemName: systemName), text: title)
        token.representedObject = id // Store id for identification
        return token
    }
    #endif
    public static func ==(lhs: SearchBarToken, rhs: SearchBarToken) -> Bool {
        lhs.id == rhs.id
    }
}
