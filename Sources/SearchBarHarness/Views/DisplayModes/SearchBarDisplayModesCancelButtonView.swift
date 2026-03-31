//
//  SearchBarDisplayModesCancelButtonView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import HarnessKit
import SearchBar

#if os(iOS) || os(visionOS)
struct SearchBarDisplayModesCancelButtonView: View {
    var body: some View {
        HarnessPreview([SearchBarCancelButtonDisplayMode.never, .always, .whileEditing] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarCancelButtonDisplayMode(variant)
                    .searchBarIsFocused(.constant(variant != .always))
                    .allowsHitTesting(false)
                    .padding(.horizontal, 5)
                Spacer()
            }
            .id(variant)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarDisplayModesCancelButtonView()
}
#endif
