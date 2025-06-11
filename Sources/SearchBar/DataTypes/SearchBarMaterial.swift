//
//  SearchBarMaterial.swift
//  SearchBar
//
//  Created by KamilSzpak on 10/06/2025.
//

import Foundation

public enum SearchBarMaterial: Identifiable, Equatable, Hashable{
    case solid
    case glass
    
    @_documentation(visibility: internal)
    public var id: Int {
        switch self {
        case .solid:
            return 0
        case .glass:
            return 1
        }
    }
    
    @_documentation(visibility: internal)
    public static func == (lhs: SearchBarMaterial, rhs: SearchBarMaterial) -> Bool {
        return lhs.id == rhs.id
    }
}
