//
//  SearchBarStyleBackgroundColorView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleBackgroundColorView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                Group{
                    if isOn{
                        SearchBar(text: .constant(""))
                            .searchBarStyle(backgroundColor: .red)
                    }else{
                        SearchBar(text: .constant(""))
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
    SearchBarStyleBackgroundColorView()
}
