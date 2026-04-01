//
//  SearchBarDisplayModesClearButtonView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

struct SearchBarDisplayModesClearButtonView: View {
    var body: some View {
        HarnessPreview([SearchBarClearButtonDisplayMode.always, .never, .whileEditing, .unlessEditing] ){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarClearButtonDisplayMode(variant)
                    .versionSpecificisFocused(.constant(true))
                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
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
