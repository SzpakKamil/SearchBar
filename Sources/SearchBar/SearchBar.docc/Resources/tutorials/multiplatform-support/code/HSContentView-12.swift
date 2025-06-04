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
        SearchBar(text: $searchText)
            ...
            .padding(.bottom, 20)
            .background(.bar)
    }
    
    ...
}

#Preview {
    ContentView()
}

