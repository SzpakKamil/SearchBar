//
//  SearchBarKeyboardTextContentTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import HarnessKit
import SearchBar

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardTextContentTypeView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                if isOn{
                    SearchBar(text: .constant(""))
                        .searchBarTextContentType(.telephoneNumber)
                        .searchBarIsFocused(.constant(true))
                        .padding(.horizontal, 5)
                }else{
                    SearchBar(text: .constant(""))
                        .searchBarIsFocused(.constant(true))
                        .padding(.horizontal, 5)
                }
                Spacer()
            }
            .id(isOn)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarKeyboardTextContentTypeView()
}
#endif
