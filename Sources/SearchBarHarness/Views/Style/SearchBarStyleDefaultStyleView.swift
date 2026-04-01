//
//  SearchBarStyleDefaultStyleView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

struct SearchBarStyleDefaultStyleView: View {
    var body: some View {
        HarnessPreview([SearchBarStyle.rounded, .capsule, .rectangle]){ variant in
            VStack{
                SearchBar(text: .constant(""))
                    .searchBarStyle(variant)
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
    SearchBarStyleScaleView()
}
