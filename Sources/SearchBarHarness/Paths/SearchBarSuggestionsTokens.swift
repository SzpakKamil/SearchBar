//
//  SearchBarSuggestionsTokens.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import SwiftUI
import HarnessKit

#if !os(watchOS) && !os(tvOS)
extension SearchBarHK {
    public enum SuggestionsTokens: Int, PathFolder {
        #if os(macOS)
        public static let options: [any PathFolder] = [
            SearchBarSuggestions,
        ]
        #else
        public static let options: [any PathFolder] = [
            SearchBarSuggestions,
            SearchBarCurrentTokens,
            SearchBarSuggestedTokens
        ]
        #endif
        case SearchBarSuggestions
        case SearchBarCurrentTokens
        case SearchBarSuggestedTokens

        #if canImport(SearchBar)
        @ViewBuilder
        public var view: some View{
            #if os(macOS)
            SearchBarSuggestionsView()
            #else
            switch self {
                case .SearchBarSuggestions:
                    SearchBarSuggestionsView()
                case .SearchBarCurrentTokens:
                    SearchBarCurrentTokensView()
                case .SearchBarSuggestedTokens:
                    SearchBarSuggestedTokensView()
            }
            #endif
        }
        #endif
        public static var folders: [any PathFolder.Type] { [] }
        public typealias ParentSection = SearchBarHK
        public static let name = "Suggestions & Tokens"
    }
}
#endif
