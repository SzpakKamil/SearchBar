//
//  SearchBarStyleScaleView.swift
//  SearchBarHarness
//
//  Created by Kamil Szpak on 07/01/2026.
//

import HarnessKit
import SearchBar
import SwiftUI

struct SearchBarStyleScaleView: View {
    var body: some View {
        HarnessPreview([SearchBarScale.small, .medium, .large]){ variant in
            VStack{
                #if !os(visionOS)
                SearchBar(text: .constant(""))
                    .searchBarScale(variant)
                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
                    .padding(.horizontal, 5)
                    #endif
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
