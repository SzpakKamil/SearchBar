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
    case rectangle
    case rounded
    
    public var cornerRadius: CGFloat {
        switch self {
        case .capsule:
            #if os(visionOS)
            return 22
            #else
            return 18
            #endif
        case .rectangle:
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
        // Compare all properties for equality
        let sameCornerStyle = lhs.cornerRadius == rhs.cornerRadius
        let sameBackgroundColor: Bool
        if !lhs.usesCustomBackground && !rhs.usesCustomBackground{
            sameBackgroundColor = true
        }else{
            sameBackgroundColor = lhs.backgroundColor == rhs.backgroundColor
        }
        let sameTintColor = lhs.tintColor == rhs.tintColor
        let sameTextColor = lhs.textColor == rhs.textColor
        let sameTokenBackground = lhs.tokenBackground == rhs.tokenBackground
        
        return sameCornerStyle && sameBackgroundColor && sameTintColor && sameTextColor && sameTokenBackground
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
            self.backgroundColor = Color(NSColor(name: nil, dynamicProvider: { appearance in
                if appearance.name == .aqua{
                    return NSColor.white
                }else{
                    return NSColor.quinaryLabel
                }
            }).cgColor)
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
            self.backgroundColor = Color(.secondarySystemBackground)
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
            self.backgroundColor = Color(.secondarySystemBackground)
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
            self.backgroundColor = Color(NSColor(name: nil, dynamicProvider: { appearance in
                if appearance.name == .aqua{
                    return NSColor.white
                }else{
                    return NSColor.quinaryLabel
                }
            }).cgColor)
            #endif
        }
    }
    
    public static let capsule = SearchBarStyle(style: .capsule)
    public static let rectangle = SearchBarStyle(style: .rectangle)
    public static let rounded = SearchBarStyle(style: .rounded)

}
