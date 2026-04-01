//
//  SearchBarDisplayModes.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

#if !os(tvOS) && !os(watchOS)
extension SearchBarHK {
    public enum DisplayModes: Int, PathFolder {
        public typealias ParentSection = SearchBarHK
        public static let name = "Display Modes"
        
        #if os(macOS)
        public static let options: [any PathFolder] = [
            SearchBarDisplayModesClearButton
        ]
        #else
        public static let options: [any PathFolder] = [
            SearchBarDisplayModesCancelButton,
            SearchBarDisplayModesClearButton
        ]
        #endif
        public static var folders: [any PathFolder.Type] { [] }

        case SearchBarDisplayModesCancelButton
        case SearchBarDisplayModesClearButton
        
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
    }
}
#endif
