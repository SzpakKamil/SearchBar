//
//  SearchBarClearButtonDisplayMode.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public enum SearchBarClearButtonDisplayMode: Identifiable, Codable, Comparable, Equatable, Hashable{
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
    @_documentation(visibility: internal)
    public var id: Int {
        switch self {
        case .always:
            0
        case .never:
            1
        case .whileEditing:
            2
        case .unlessEditing:
            3
        }
    }
    @_documentation(visibility: internal)
    static public func < (lhs: SearchBarClearButtonDisplayMode, rhs: SearchBarClearButtonDisplayMode) -> Bool {
        return lhs.id < rhs.id
    }
    @_documentation(visibility: internal)
    static public func == (lhs: SearchBarClearButtonDisplayMode, rhs: SearchBarClearButtonDisplayMode) -> Bool {
        return lhs.id == rhs.id
    }
    
    @_documentation(visibility: internal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        switch value {
        case "always": self = .always
        case "never": self = .never
        case "whileEditing": self = .whileEditing
        case "unlessEditing": self = .unlessEditing
        default:
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid case value " + value)
        }
    }
    
    @_documentation(visibility: internal)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .always: try container.encode("always")
        case .never: try container.encode("never")
        case .whileEditing: try container.encode("whileEditing")
        case .unlessEditing: try container.encode("unlessEditing")
        }
    }
}
