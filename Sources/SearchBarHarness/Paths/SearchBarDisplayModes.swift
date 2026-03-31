//
//  SearchBarDisplayModes.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import SwiftUI
import HarnessKit

#if !os(tvOS) && !os(watchOS)
extension SearchBarHK {
    public enum DisplayModes: Int, PathFolder {
        #if os(macOS)
        public static let options: [any PathFolder] = [
            SearchBarDisplayModesCancelButton,
            SearchBarDisplayModesClearButton
        ]
        #else
        public static let options: [any PathFolder] = [
            SearchBarDisplayModesCancelButton,
            SearchBarDisplayModesClearButton
        ]
        #endif
        case SearchBarDisplayModesCancelButton
        case SearchBarDisplayModesClearButton

        public var description: String{
            switch self {
                case .SearchBarDisplayModesCancelButton:
                    "SearchBarDisplayModesCancelButton"
                case .SearchBarDisplayModesClearButton:
                    "SearchBarDisplayModesClearButton"
            }
        }
        
        #if canImport(SearchBar)
        @ViewBuilder
        public var view: some View{
            #if os(macOS)
            SearchBarDisplayModesClearButtonView()
            #else
            switch self {
                case .SearchBarDisplayModesCancelButton:
                    SearchBarDisplayModesCancelButtonView()
                case .SearchBarDisplayModesClearButton:
                    SearchBarDisplayModesClearButtonView()
            }
            #endif
        }
        #endif
        
        public typealias ParentSection = SearchBarHK
        public static let name = "Display Modes"

    }
}
#endif
