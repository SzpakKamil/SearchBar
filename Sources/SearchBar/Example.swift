//
//  Example.swift
//  SearchBar
//
//  Created by KamilSzpak on 14/04/2025.
//

import SwiftUI

@available(iOS 16.0, *)
struct ExampleNew: View {
    @State private var test = "Not Set"
    @State private var names: [String] = ["John", "Adam"]
    @State private var searchText = ""
    @State private var currentTokens: [SearchBarToken] = []
    @State private var suggestions: [SearchBarSuggestion] = [.init(title: "Text", description: "Text", systemName: "camera")]
    
    var body: some View {
        VStack {
            Text(test)
            Button("Add Example") {
                currentTokens.append(.init(title: "Title", systemName: "camera"))
            }
            SearchBar(text: $searchText)
                .searchBarSuggestions($suggestions)
                .searchBarEnableAutomaticSuggestionsFiltering()
                .searchBarOnClearPerform { test = "Cleared"}
                .searchBarOnSearchPerform { test = "Searched"}
                .searchBarOnBeginEditingPerform { test = "Started" }
                .searchBarOnEndEditingPerform { test = "Ended" }
                #if !os(macOS) && !os(tvOS)
                .searchBarCurrentTokens($currentTokens)
                #endif
                #if os(visionOS)
                .searchBarWithRoundedCorners()
                #endif
                .padding(.horizontal)
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
                currentTokens.append(.init(title: "Title", systemName: "camera"))
            }
            SearchBar(text: $searchText)
                .padding(.horizontal)
        }
    }
}

#Preview {
    if #available(iOS 16.0, *) {
        ExampleNew()
    } else {
        ExampleOld()
    }
}
