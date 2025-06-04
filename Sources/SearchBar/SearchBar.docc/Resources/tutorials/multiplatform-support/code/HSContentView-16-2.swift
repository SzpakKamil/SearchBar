//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI
import SearchBar

struct ContentView: View {
    ...
    @ViewBuilder
    private func searchBarImplementation() -> some View{
        var bottomPadding: CGFloat{
            #if os(iOS)
            return 20
            #elseif os(macOS)
            return 5
            #else
            return 0
            #endif
        }
        var horizontalPadding: CGFloat{
            #if os(iOS)
            return 0
            #elseif os(macOS)
            return 5
            #else
            return 0
            #endif
        }
        var style: SearchBarStyle{
            #if os(iOS)
            return SearchBarStyle(style: .capsule, textColor: .blue, tint: .cyan, tokenBackground: .blue, backgroundColor: .blue.opacity(0.1))
            #elseif os(macOS)
            return SearchBarStyle.rounded
            #else
            return SearchBarStyle(style: .capsule, textColor: .blue, tint: .cyan, tokenBackground: .blue, backgroundColor: .blue.opacity(0.1))
            #endif
        }
        SearchBar(text: $searchText)
            ...
            #if !os(macOS)
            .searchBarCurrentTokens($currentTokens)
            .searchBarSuggestedTokens(Genre.allCases.map(\.suggestion))
            .searchBarCancelButtonDisplayMode(.always)
            .searchBarAutoCorrectionType(.no)
            .searchBarReturnKeyType(.search)
            .searchBarTextContentType(.emailAddress)
            #endif
            .searchBarStyle(style)
            .searchBarEnableAutomaticSuggestionsFiltering{ searchText, suggestion in
                guard !searchText.isEmpty && searchText.count != suggestion.text.count else {
                    return false
                }
                return suggestion.text
                    .localizedStandardContains(searchText)
            }
            .padding(.bottom, bottomPadding)
            .padding(.horizontal, horizontalPadding)
            #if !os(visionOS)
            .background(.bar)
            #endif
    }
    
    ...
}

#Preview {
    ContentView()
}

