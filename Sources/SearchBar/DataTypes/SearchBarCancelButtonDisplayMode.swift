//
//  SearchBarCancelButtonDisplayMode.swift
//  SearchBar
//
//  Created by KamilSzpak on 06/05/2025.
//

import Foundation

public enum SearchBarCancelButtonDisplayMode: Identifiable, Equatable, Comparable, Codable, Hashable{
    case never
    case always
    case whileEditing
    
    @_documentation(visibility: internal)
    public var id: Int {
        switch self {
        case .never:
            0
        case .always:
            1
        case .whileEditing:
            2
        }
    }
    @_documentation(visibility: internal)
    static public func < (lhs: SearchBarCancelButtonDisplayMode, rhs: SearchBarCancelButtonDisplayMode) -> Bool {
        return lhs.id < rhs.id
    }
    @_documentation(visibility: internal)
    static public func == (lhs: SearchBarCancelButtonDisplayMode, rhs: SearchBarCancelButtonDisplayMode) -> Bool {
        return lhs.id == rhs.id
    }
    
    @_documentation(visibility: internal)
    private enum CodingKeys: String, CodingKey {
        case kind
    }

    @_documentation(visibility: internal)
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let kind = try container.decode(String.self, forKey: .kind)
        switch kind {
        case "never": self = .never
        case "always": self = .always
        case "whileEditing": self = .whileEditing
        default:
            throw DecodingError.dataCorruptedError(forKey: .kind, in: container, debugDescription: "Invalid cancel button display mode '")
        }
    }

    @_documentation(visibility: internal)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .never: try container.encode("never", forKey: .kind)
        case .always: try container.encode("always", forKey: .kind)
        case .whileEditing: try container.encode("whileEditing", forKey: .kind)
        }
    }
    
}
