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
            ZStack{
                SearchBar(text: .constant(""))
                    .searchBarAutoCorrectionType(isOn ? .yes : .no)
                    .searchBarIsFocused(.constant(true))
                    .padding(.horizontal, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(isOn)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarKeyboardAutoCorrectionTypeView()
}
#endif
