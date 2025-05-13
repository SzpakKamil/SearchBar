//
//  Example.swift
//  SearchBar
//
//  Created by KamilSzpak on 14/04/2025.
//

import SwiftUI

@available(iOS 16.0, *)
struct ExampleNew: View {
    @State private var searchText = ""
    @State private var debugText = ""
    @State private var isUsing = false
    @State private var currentTokens: [SearchBarToken] = [.init(text: "Text", systemName: "camera")]
    
    var body: some View {
        Text(debugText)
        Text(isUsing.description)
        if #available(macOS 15.0, *) {
            SearchBar(text: $searchText)
            #if !os(macOS)
                .searchBarCancelButtonDisplayMode(.whileEditing)
                .searchBarCancelButtonAction { debugText = "Cancel Button Tapped" }
                .searchBarStyle(.capsule, tokenBackground: .blue)
                .searchBarCurrentTokens($currentTokens)
            #else
                .searchBarStyle(style: .capsule)
            #endif
                .searchBarIsFocused($isUsing)
                .searchBarSuggestions([.init(text: "Suggestion")])
                .searchBarEnableAutomaticSuggestionsFiltering()
                .searchBarClearButtonDisplayMode(.always)
                .searchBarBeginEditingAction { debugText = "Editing Beggined" }
                .searchBarClearButtonAction { debugText = "Editing Cleared" }
                .searchBarEndEditingAction { debugText = "Editing Ended" }
                .searchBarIconView{ Image(systemName: "macbook") }
                .padding(.bottom)
        } else {
            SearchBar(text: $searchText)
                .searchBarStyle(.capsule)
                #if !os(macOS)
                .searchBarCancelButtonDisplayMode(.whileEditing)
                .searchBarCancelButtonAction { debugText = "Cancel Button Tapped" }
                #endif
                .searchBarClearButtonDisplayMode(.always)
                .searchBarClearButtonAction { debugText = "Editing Cleared" }
                .searchBarIconView{
                    Image(systemName: "macbook")
                }
                .padding(.bottom)
        }
    }
}

struct ExampleOld: View {
    @State private var names: [String] = ["John", "Adam"]
    @State private var searchText = ""
    @State private var currentTokens: [SearchBarToken] = []
    
    var body: some View {
        VStack {
            Button("Add Example") {
                currentTokens.append(.init(text: "Title", systemName: "camera"))
            }
            SearchBar(text: $searchText)
                .padding(.horizontal)
        }
    }
}

#if os(visionOS)
#Preview(windowStyle: .automatic) {
    if #available(iOS 16.0, *) {
        ExampleNew()
    } else {
        ExampleOld()
    }
}
#else
#Preview {
    if #available(iOS 16.0, *) {
        ExampleNew()
    } else {
        ExampleOld()
    }
}
#endif
