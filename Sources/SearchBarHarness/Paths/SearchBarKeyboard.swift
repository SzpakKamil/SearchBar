//
//  SearchBarKeyboard.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

#if os(iOS) || os(visionOS)
extension SearchBarHK {
    public enum Keyboard: Int, PathFolder {
        public typealias ParentSection = SearchBarHK
        public static let name = "Keyboard"
        
        public static let options: [any PathFolder] = [
            SearchBarKeyboardType,
            SearchBarKeyboardReturnKeyType,
            SearchBarKeyboardAutoCorrectionType,
            SearchBarKeyboardAutoCapitalizationType,
            SearchBarKeyboardTextContentType,
        ]
        public static var folders: [any PathFolder.Type] { [] }
        
        case SearchBarKeyboardType
        case SearchBarKeyboardReturnKeyType
        case SearchBarKeyboardAutoCorrectionType
        case SearchBarKeyboardAutoCapitalizationType
        case SearchBarKeyboardTextContentType
        
        #if canImport(SearchBar)
        @ViewBuilder
        public var view: some View{
            switch self {
                case .SearchBarKeyboardType:
                    SearchBarKeyboardTypeView()
                case .SearchBarKeyboardReturnKeyType:
                    SearchBarKeyboardReturnKeyTypeView()
                case .SearchBarKeyboardAutoCorrectionType:
                    SearchBarKeyboardAutoCorrectionTypeView()
                case .SearchBarKeyboardAutoCapitalizationType:
                    SearchBarKeyboardAutoCapitalizationTypeView()
                case .SearchBarKeyboardTextContentType:
                    SearchBarKeyboardTextContentTypeView()
            }
        }
        #endif
    }
}
#endif
