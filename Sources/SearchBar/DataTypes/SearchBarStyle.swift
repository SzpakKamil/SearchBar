//
//  SearchBarShapeStyle.swift
//  SearchBar
//
//  Created by KamilSzpak on 06/05/2025.
//

import Foundation
import SwiftUI

public enum SearchBarCornerStyle{
    case capsule
    case rectangular
    case rounded
    
    public var cornerRadius: CGFloat {
        switch self {
        case .capsule:
            #if os(visionOS)
            return 22
            #else
            return 18
            #endif
        case .rectangular:
            return 0
        case .rounded:
            #if os(macOS)
            return 5
            #else
            return 10
            #endif
        }
    }
}

public struct SearchBarStyle: Equatable{
    public let cornerRadius: CGFloat
    public let tintColor: Color?
    public let textColor: Color?
    public let tokenBackground: Color?
    public let usesCustomBackground: Bool
    public let backgroundColor: Color
    
    @_documentation(visibility: internal)
    public static func == (lhs: SearchBarStyle, rhs: SearchBarStyle) -> Bool {
        return lhs.cornerRadius == rhs.cornerRadius && lhs.backgroundColor == rhs.backgroundColor && lhs.tintColor == rhs.tintColor && lhs.textColor == rhs.textColor
    }
    
    public init(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil) {
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.tintColor = tint
        self.tokenBackground = nil
        if let backgroundColor{
            self.backgroundColor = backgroundColor
            self.usesCustomBackground = true
        }else{
            self.usesCustomBackground = false
            #if !os(macOS)
            self.backgroundColor = Color(.secondarySystemBackground)
            #else
            self.backgroundColor = Color(light: NSColor.white ,dark: NSColor.quinaryLabel)
            #endif
        }

    }
    
    #if !os(macOS)
    public init(cornerRadius: CGFloat = 0, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil) {
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.tintColor = tint
        self.tokenBackground = tokenBackground
        if let backgroundColor{
            self.backgroundColor = backgroundColor
            self.usesCustomBackground = true
        }else{
            self.usesCustomBackground = false
            #if !os(macOS)
            self.backgroundColor = Color(.secondarySystemBackground)
            #else
            self.backgroundColor = Color(light: NSColor.white ,dark: NSColor.quinaryLabel)
            #endif
        }
    }
    public init(style: SearchBarCornerStyle = .rounded, textColor: Color? = nil, tint: Color? = nil, tokenBackground: Color? = nil, backgroundColor: Color? = nil) {
        self.cornerRadius = style.cornerRadius
        self.textColor = textColor
        self.tintColor = tint
        self.tokenBackground = tokenBackground
        if let backgroundColor{
            self.backgroundColor = backgroundColor
            self.usesCustomBackground = true
        }else{
            self.usesCustomBackground = false
            #if !os(macOS)
            self.backgroundColor = Color(.secondarySystemBackground)
            #else
            self.backgroundColor = Color(light: NSColor.white ,dark: NSColor.quinaryLabel)
            #endif
        }
    }
    #endif
    
    public init(style: SearchBarCornerStyle = .rounded, textColor: Color? = nil, tint: Color? = nil, backgroundColor: Color? = nil) {
        self.cornerRadius = style.cornerRadius
        self.textColor = textColor
        self.tintColor = tint
        self.tokenBackground = nil
        if let backgroundColor{
            self.backgroundColor = backgroundColor
            self.usesCustomBackground = true
        }else{
            self.usesCustomBackground = false
            #if !os(macOS)
            self.backgroundColor = Color(.secondarySystemBackground)
            #else
            self.backgroundColor = Color(light: NSColor.white ,dark: NSColor.quinaryLabel)
            #endif
        }
    }
    
    public static let capsule = SearchBarStyle(style: .capsule)
    public static let rectangle = SearchBarStyle(style: .rectangular)
    public static let rounded = SearchBarStyle(style: .rounded)

}
