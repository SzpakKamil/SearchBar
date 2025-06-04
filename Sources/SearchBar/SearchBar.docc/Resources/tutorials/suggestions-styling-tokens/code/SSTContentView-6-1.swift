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

    ...
        NavigationStack{
            ZStack(alignment: .bottom){
                List{
                    if keys.isEmpty{

                    }else{
                        ForEach(keys){key in
                            Section(key.name) {
                                ForEach(groups[key] ?? []){
                                    movieRow(for: $0)
                                }
                            }
                        }
                    }
    ...
}

#Preview {
    ContentView()
}

