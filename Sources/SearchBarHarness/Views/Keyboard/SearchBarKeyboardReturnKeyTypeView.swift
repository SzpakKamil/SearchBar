//
//  SearchBarKeyboardReturnKeyTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

#if os(iOS) || os(visionOS)
struct SearchBarKeyboardReturnKeyTypeView: View {
    var body: some View {
        HarnessPreview([UIReturnKeyType.default, .go, .google, .join, .next, .route, .search, .send, .yahoo, .done, .emergencyCall, .continue] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarReturnKeyType(variant)
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
    SearchBarKeyboardReturnKeyTypeView()
}
#endif
