//
//  SearchBarKeyboardTextContentTypeView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardTextContentTypeView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                if isOn{
                    SearchBar(text: .constant(""))
                        .searchBarTextContentType(.telephoneNumber)
                        .searchBarIsFocused(.constant(true))
                        .allowsHitTesting(false)
                        .versionSpecificFocusable()
                        .padding(.horizontal, 5)
                }else{
                    SearchBar(text: .constant(""))
                        .searchBarIsFocused(.constant(true))
                        .allowsHitTesting(false)
                        .versionSpecificFocusable()
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
