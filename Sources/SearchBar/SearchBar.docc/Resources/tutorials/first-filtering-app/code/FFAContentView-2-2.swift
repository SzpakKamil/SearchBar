//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI

struct ContentView: View {
    ...
    var body: some View {
        let groups = Dictionary(grouping: movies, by: \.genre)
        let keys = groups.keys.sorted()
        NavigationStack{
            List{
                ForEach(keys){key in
                    Section(key.name) {
                        ForEach(groups[key] ?? []){ movie in
                            Text("To Do")
                        }
                    }
                }
            }
            .navigationTitle("Searcher")
        }
    }
}

#Preview {
    ContentView()
}
