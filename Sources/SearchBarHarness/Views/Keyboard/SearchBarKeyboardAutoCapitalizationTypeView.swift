//
//  SearchBarKeyboardAutoCapitalizationTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarKeyboardAutoCapitalizationTypeView: View {
    #if !os(macOS)
    var body: some View {
        HarnessPreview([UITextAutocapitalizationType.none, .words, .sentences, .allCharacters ] ){ variant in
            ZStack{
                Group{
                    switch variant {
                    case .none:
                        SearchBar(text: .constant("no capitalization"))
                            .searchBarAutoCapitalizationType(variant)
                            .searchBarIsFocused(.constant(true))
                    case .words:
                        SearchBar(text: .constant("Word Capitalization"))
                            .searchBarAutoCapitalizationType(variant)
                            .searchBarIsFocused(.constant(true))
                    case .sentences:
                        SearchBar(text: .constant("Sentences Capitalization"))
                            .searchBarAutoCapitalizationType(variant)
                            .searchBarIsFocused(.constant(true))
                    case .allCharacters:
                        SearchBar(text: .constant("ALL CAPITALIZED"))
                            .searchBarAutoCapitalizationType(variant)
                            .searchBarIsFocused(.constant(true))
                    @unknown default:
                        SearchBar(text: .constant("no capitalization"))
                            .searchBarAutoCapitalizationType(variant)
                            .searchBarIsFocused(.constant(true))
                    }
                }
                .padding(.horizontal, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(variant)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
    #else
    var body: some View{
        SearchBarStyleTextColorView()
    }
    #endif
}

#Preview {
    SearchBarKeyboardAutoCapitalizationTypeView()
}
