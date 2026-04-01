//
//  SearchBarStyleBorderColorView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleTextColorView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                Group{
                    if isOn{
                        SearchBar(text: .constant("Hello"))
                            .searchBarStyle(textColor: .blue)
                    }else{
                        SearchBar(text: .constant("Hello"))
                    }
                }
                .allowsHitTesting(false)
                .versionSpecificFocusable()
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
    SearchBarStyleTextColorView()
}
