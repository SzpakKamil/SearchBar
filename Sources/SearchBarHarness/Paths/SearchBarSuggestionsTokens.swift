//
//  SearchBarSuggestionsTokens.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import SwiftUI
import HarnessKit

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

        public var description: String{
            switch self {
                case .SearchBarSuggestions:
                    return "SearchBarSuggestions"
                case .SearchBarCurrentTokens:
                    return "SearchBarCurrentTokens"
                case .SearchBarSuggestedTokens:
                    return "SearchBarSuggestedTokens"
            }
        }
        
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
        
        public typealias ParentSection = SearchBarHK
        public static let name = "Suggestions & Tokens"
    }
}
