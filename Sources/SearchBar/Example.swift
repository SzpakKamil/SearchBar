//
//  Example.swift
//  SearchBar
//
//  Created by KamilSzpak on 14/04/2025.
//

import SwiftUI

struct Example: View {
    @State private var searchText = ""
    var body: some View {
        #if os(visonOS)
        SearchBar(text: $searchText, useRounded: true)
#endif
        SearchBar(text: $searchText)

    }
}

#Preview {
    Example()
}
