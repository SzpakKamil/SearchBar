//
//  SearchBarSuggestionsView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 10/01/2026.
//

import SwiftUI
import HarnessKit
import SearchBar

#if os(iOS) || os(visionOS) || os(macOS)
struct SearchBarSuggestionsView: View {
    var body: some View {
        HarnessPreview{ isOn in
            ZStack{
                Group{
                    if #available(iOS 16.0, macOS 15.0, *), isOn{
                        SearchBar(text: .constant(""))
                            .searchBarSuggestions(.constant([.init(text: "Triangle", description: "3 Corners", systemName: "triangle.fill"), .init(text: "Circle", description: "Perfectly Round", systemName: "circle.fill"), .init(text: "Square", description: "4 Corners", systemName: "square.fill")]))
                            .searchBarIsFocused(.constant(true))
                    }else if #available(macOS 12.0, *){
                        SearchBar(text: .constant(""))
                            .searchBarIsFocused(.constant(true))
                    }
                }
                .padding(.horizontal, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarSuggestionsView()
}
#endif
