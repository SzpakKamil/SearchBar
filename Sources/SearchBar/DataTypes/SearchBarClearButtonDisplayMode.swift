//
//  SearchBarClearButtonDisplayMode.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public enum SearchBarClearButtonDisplayMode: Int, Identifiable, Codable, Comparable, Equatable, Hashable{
    case always
    case never
    case whileEditing
    case unlessEditing
    
    #if !os(macOS)
    public var uiTextFieldViewMode: UITextField.ViewMode{
        switch self {
        case .always:
            return .always
        case .never:
            return .never
        case .whileEditing:
            return .whileEditing
        case .unlessEditing:
            return .unlessEditing
        }
    }
    #endif
    
    public var id: Int {
        return self.rawValue
    }
    
    static public func < (lhs: SearchBarClearButtonDisplayMode, rhs: SearchBarClearButtonDisplayMode) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    static public func == (lhs: SearchBarClearButtonDisplayMode, rhs: SearchBarClearButtonDisplayMode) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}
