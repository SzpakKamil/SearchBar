//
//  ContentView.swift
//  Searcher
//
//  Created by KamilSzpak on 04/05/2025.
//

import SwiftUI

struct ContentView: View {
    let movies: [Movie] = [
        .init(
            title: "Movie 1",
            description: "Loved by many hated by no one.",
            genre: .action
        ),
        .init(
            title: "Everywhere and nowhere",
            description: "Story of a men looking for his son",
            genre: .adventure
        ),
        .init(
            title: "Look! Where?",
            description: "Funny Adventure of two sisters.",
            genre: .adventure
        ),
        .init(
            title: "Where is Dany?",
            description: "Animated movie oriented around...",
            genre: .animation
        ),
        .init(
            title: "CoLOrS",
            description: "Explaining meaning of Color.",
            genre: .animation
        ),
    ]
    var body: some View {
        let groups = Dictionary(grouping: movies, by: \.genre)
        let keys = groups.keys.sorted()
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
