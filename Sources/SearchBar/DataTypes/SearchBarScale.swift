//
//  SearchBarMaterial.swift
//  SearchBar
//
//  Created by KamilSzpak on 10/06/2025.
//

import Foundation

public enum SearchBarScale: Identifiable, Equatable, Hashable{
    case small
    case medium
    case large
    
    @_documentation(visibility: internal)
    public var id: Int {
        switch self {
        case .small:
            return 0
        case .medium:
            return 1
        case .large:
            return 2
        }
    }
    
    @_documentation(visibility: internal)
    var cornerScale: Double{
        switch self {
        case .small:
            1.0
        case .medium:
            1.15
        case .large:
            1.25
        }
    }
    
    @_documentation(visibility: internal)
    var heightMultiplier: Double{
        #if os(macOS)
        switch self {
        case .small:
            1
        case .medium:
            2
        case .large:
            3
        }
        #else
        switch self {
        case .small:
            1.0
        case .medium:
            0.80
        case .large:
            0.9
        }
        #endif
    }
    
    @_documentation(visibility: internal)
    public static func == (lhs: SearchBarScale, rhs: SearchBarScale) -> Bool {
        return lhs.id == rhs.id
    }
}
