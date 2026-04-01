//
//  SearchBarKeyboardTypeView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardTypeView: View {
    var body: some View {
        HarnessPreview([UIKeyboardType.default, .numbersAndPunctuation, .URL, .numberPad, .phonePad, .namePhonePad, .emailAddress, .decimalPad, .twitter, .webSearch, .alphabet] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarKeyboardType(variant)
                    .searchBarIsFocused(.constant(true))
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
    SearchBarKeyboardTypeView()
}
#endif
