//
//  SearchBarCancelButtonDisplayMode.swift
//  SearchBar
//
//  Created by KamilSzpak on 06/05/2025.
//

import Foundation

public enum SearchBarCancelButtonDisplayMode: Int, Identifiable, Equatable, Comparable, Codable, Hashable{
    case never
    case always
    case whileEditing
    
    public var id: Int {
        return self.rawValue
    }
    
    static public func < (lhs: SearchBarCancelButtonDisplayMode, rhs: SearchBarCancelButtonDisplayMode) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    static public func == (lhs: SearchBarCancelButtonDisplayMode, rhs: SearchBarCancelButtonDisplayMode) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}
