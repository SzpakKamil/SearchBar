//
//  SearchBarDisplayModesClearButtonView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarDisplayModesClearButtonView: View {
    var body: some View {
        HarnessPreview([SearchBarClearButtonDisplayMode.always, .never, .whileEditing, .unlessEditing] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarClearButtonDisplayMode(variant)
                    .versionSpecificisFocused(.constant(true))
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
    SearchBarDisplayModesClearButtonView()
}
