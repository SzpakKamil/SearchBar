//
//  SearchBarStyle.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import SwiftUI
import HarnessKit

extension SearchBarHK {
    public enum Style: Int, PathFolder {
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
                    SearchBarStyleTokenBackgroundView()
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
        public static var folders: [any PathFolder.Type] { [] }
        public typealias ParentSection = SearchBarHK
        public static let name = "Style"
    }
}
