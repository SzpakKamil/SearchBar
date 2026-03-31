//
//  SearchBarKeyboardAutoCapitalizationTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardAutoCapitalizationTypeView: View {
    var body: some View {
        HarnessPreview([UITextAutocapitalizationType.none, .words, .sentences, .allCharacters ] ){ variant in
            VStack{
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
                                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
                .padding(.horizontal, 5)
                Spacer()
            }
            .id(variant)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarKeyboardAutoCapitalizationTypeView()
}
#endif
