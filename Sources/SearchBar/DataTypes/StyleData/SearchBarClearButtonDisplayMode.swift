//
//  SearchBarClearButtonDisplayMode.swift
//  SearchBar
//
//  Created by KamilSzpak on 02/05/2025.
//

import Foundation
import SwiftUI

public struct SearchBarClearButtonDisplayMode: Identifiable, Equatable{
    public var id: Int
    #if !os(macOS)
    var uiTextFieldViewMode: UITextField.ViewMode
    #endif
    #if os(macOS)
    static public let never = SearchBarClearButtonDisplayMode(id: 0)
    static public let always = SearchBarClearButtonDisplayMode(id: 1)
    #else
    static public let never = SearchBarClearButtonDisplayMode(id: 0, uiTextFieldViewMode: .never)
    static public let always = SearchBarClearButtonDisplayMode(id: 1, uiTextFieldViewMode: .always)
    #endif
    
    #if os(macOS)
    private init(id: Int) {
        self.id = id
    }
    #else
    private init(id: Int, uiTextFieldViewMode: UITextField.ViewMode) {
        self.id = id
        self.uiTextFieldViewMode = uiTextFieldViewMode
    }
    #endif
    
    static public func == (lhs: SearchBarClearButtonDisplayMode, rhs: SearchBarClearButtonDisplayMode) -> Bool {
        lhs.id == rhs.id
    }
}

@available(iOS 14.0, macOS 12.0, *)
public extension SearchBarClearButtonDisplayMode{
    #if os(macOS)
    static let whileEditing = SearchBarClearButtonDisplayMode(id: 2)
    static let unlessEditing = SearchBarClearButtonDisplayMode(id: 3)
    #else
    static let whileEditing = SearchBarClearButtonDisplayMode(id: 2, uiTextFieldViewMode: .whileEditing)
    static let unlessEditing = SearchBarClearButtonDisplayMode(id: 3, uiTextFieldViewMode: .unlessEditing)
    #endif
}
