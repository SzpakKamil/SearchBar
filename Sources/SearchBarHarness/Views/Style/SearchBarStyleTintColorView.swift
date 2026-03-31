//
//  SearchBarStyleTintColorView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleTintColorView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                Group{
                    if isOn{
                        SearchBar(text: .constant("Hello"))
                            .searchBarStyle(tint: .red)
                            .versionSpecificisFocused(.constant(true))
                    }else{
                        SearchBar(text: .constant("Hello"))
                            .versionSpecificisFocused(.constant(true))
                    }
                }
                .allowsHitTesting(false)
                .padding(.horizontal, 5)
                Spacer()
            }
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarStyleTintColorView()
}
