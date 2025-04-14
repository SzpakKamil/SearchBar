//
//  Example.swift
//  SearchBar
//
//  Created by KamilSzpak on 14/04/2025.
//

import SwiftUI

struct Example: View {
    @State private var names: [String] = ["John", "Adam"]
    @State private var searchText = ""
    var body: some View {
        SearchBar(text: $searchText)
            .padding(.horizontal)
    }
}

#Preview {
    Example()
}
