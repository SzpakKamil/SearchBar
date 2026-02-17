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
        #if os(tvOS)
        switch self {
        case .small:
            return 1.75
        case .medium:
            return 2.25
        case .large:
            return 3
        }
        #else
        switch self {
        case .small:
            return 1
        case .medium:
            if #available(iOS 26.0, *){
                return 1.35
            }else{
                return 1.2
            }
        case .large:
            if #available(iOS 26.0, *){
                return 1.4
            }else{
                return 1.4
            }
        }
        #endif
    }
    
    @_documentation(visibility: internal)
    var heightMultiplier: Double{
        #if os(macOS) || os(tvOS)
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
            if #available(iOS 26.0, *){
                0.82
            }else{
                1.0
            }
        case .medium:
            if #available(iOS 26.0, *){
                0.77
            }else{
                0.8
            }
        case .large:
            if #available(iOS 26.0, *){
                0.8
            }else{
                0.9
            }
        }
        #endif
    }
    
    @_documentation(visibility: internal)
    public static func == (lhs: SearchBarScale, rhs: SearchBarScale) -> Bool {
        return lhs.id == rhs.id
    }
}
