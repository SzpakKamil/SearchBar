//
//  SearchBarStyle.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

extension SearchBarHK {
    public enum Style: Int, PathFolder {
        public typealias ParentSection = SearchBarHK
        public static let name = "Style"
        
        #if os(iOS) || os(visionOS)
        public static let options: [any PathFolder] = [
            SearchBarStyleCornerRadius,
            SearchBarStyleBorderColor,
            SearchBarStyleTextColor,
            SearchBarStyleTintColor,
            SearchBarStyleTokenBackground,
            SearchBarStyleBackgroundColor,
            SearchBarStyleMaterial,
            SearchBarStyleScale,
            SearchBarStyleDefaultStyle
        ]
        #else
        public static let options: [any PathFolder] = [
            SearchBarStyleCornerRadius,
            SearchBarStyleBorderColor,
            SearchBarStyleTextColor,
            SearchBarStyleTintColor,
            SearchBarStyleBackgroundColor,
            SearchBarStyleMaterial,
            SearchBarStyleScale,
            SearchBarStyleDefaultStyle
        ]
        #endif
        public static var folders: [any PathFolder.Type] { [] }
        
        case SearchBarStyleCornerRadius
        case SearchBarStyleBorderColor
        case SearchBarStyleTextColor
        case SearchBarStyleTintColor
        case SearchBarStyleTokenBackground
        case SearchBarStyleBackgroundColor
        case SearchBarStyleMaterial
        case SearchBarStyleScale
        case SearchBarStyleDefaultStyle
        
        #if canImport(SearchBar)
        @ViewBuilder
        public var view: some View{
            switch self {
                case .SearchBarStyleCornerRadius:
                    SearchBarStyleCornerRadiusView()
                case .SearchBarStyleBorderColor:
                    SearchBarStyleBorderColorView()
                case .SearchBarStyleTextColor:
                    SearchBarStyleTextColorView()
                case .SearchBarStyleTintColor:
                    SearchBarStyleTintColorView()
                case .SearchBarStyleTokenBackground:
                #if os(iOS) || os(visionOS)
                    SearchBarStyleTokenBackgroundView()
                #else
                    EmptyView()
                #endif
                case .SearchBarStyleBackgroundColor:
                    SearchBarStyleBackgroundColorView()
                case .SearchBarStyleMaterial:
                    SearchBarStyleMaterialView()
                case .SearchBarStyleScale:
                    SearchBarStyleScaleView()
                case .SearchBarStyleDefaultStyle:
                    SearchBarStyleDefaultStyleView()
            }
            
        }
        #endif
    }
}
