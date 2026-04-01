//
//  SearchBarKeyboardAutoCorrectionTypeView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardAutoCorrectionTypeView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarAutoCorrectionType(isOn ? .yes : .no)
                    .searchBarIsFocused(.constant(true))
                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
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
