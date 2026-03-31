//
//  SearchBarKeyboard.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import SwiftUI
import HarnessKit

extension SearchBarHK {
    public enum Keyboard: Int, PathFolder {
        public static let options: [any PathFolder] = [
            SearchBarKeyboardType,
            SearchBarKeyboardReturnKeyType,
            SearchBarKeyboardAutoCorrectionType,
            SearchBarKeyboardAutoCapitalizationType,
            SearchBarKeyboardTextContentType,
        ]
        case SearchBarKeyboardType
        case SearchBarKeyboardReturnKeyType
        case SearchBarKeyboardAutoCorrectionType
        case SearchBarKeyboardAutoCapitalizationType
        case SearchBarKeyboardTextContentType

        public var description: String{
            switch self {
                case .SearchBarKeyboardType:
                    "SearchBarKeyboardType"
                case .SearchBarKeyboardReturnKeyType:
                    "SearchBarKeyboardReturnKeyType"
                case .SearchBarKeyboardAutoCorrectionType:
                    "SearchBarKeyboardAutoCorrectionType"
                case .SearchBarKeyboardAutoCapitalizationType:
                    "SearchBarKeyboardAutoCapitalizationType"
                case .SearchBarKeyboardTextContentType:
                    "SearchBarKeyboardTextContentType"
            }
        }
        
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

        
        public typealias ParentSection = SearchBarHK
        public static let name = "Keyboard"
    }
}
