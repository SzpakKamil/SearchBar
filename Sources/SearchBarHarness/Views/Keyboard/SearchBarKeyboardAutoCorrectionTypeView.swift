//
//  SearchBarKeyboardAutoCorrectionTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import HarnessKit
import SearchBar

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardAutoCorrectionTypeView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarAutoCorrectionType(isOn ? .yes : .no)
                    .searchBarIsFocused(.constant(true))
                    .allowsHitTesting(false)
                .padding(.horizontal, 5)
                Spacer()
            }
            .id(isOn)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarKeyboardAutoCorrectionTypeView()
}
#endif
