//
//  SearchBarKeyboardTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardTypeView: View {
    var body: some View {
        HarnessPreview([UIKeyboardType.default, .numbersAndPunctuation, .URL, .numberPad, .phonePad, .namePhonePad, .emailAddress, .decimalPad, .twitter, .webSearch, .alphabet] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarKeyboardType(variant)
                    .searchBarIsFocused(.constant(true))
                    .allowsHitTesting(false)
                .padding(.horizontal, 5)
                Spacer()
            }
            .id(variant)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarKeyboardTypeView()
}
#endif
