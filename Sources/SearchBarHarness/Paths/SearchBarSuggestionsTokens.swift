//
//  SearchBarSuggestionsTokens.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

#if !os(watchOS) && !os(tvOS)
extension SearchBarHK {
    public enum SuggestionsTokens: Int, PathFolder {
        public typealias ParentSection = SearchBarHK
        public static let name = "Suggestions & Tokens"
        
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
        public static var folders: [any PathFolder.Type] { [] }
        
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
    }
}
#endif
