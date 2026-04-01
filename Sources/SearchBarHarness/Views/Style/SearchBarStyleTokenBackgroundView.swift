//
//  SearchBarStyleTokenBackgroundView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

#if !os(macOS) && !os(tvOS) && !os(watchOS)
struct SearchBarStyleTokenBackgroundView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
                if #available(iOS 16.0, *), isOn{
                    SearchBar(text: .constant(""))
                        .searchBarStyle(tokenBackground: .red)
                        .searchBarCurrentTokens(.constant([SearchBarToken(text: "Hello", systemName: "globe")]))
                }else if #available(iOS 16.0, *){
                    SearchBar(text: .constant(""))
                        .searchBarCurrentTokens(.constant([SearchBarToken(text: "Hello", systemName: "globe")]))
                }
                Spacer()
            }
            .id(isOn)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarStyleTokenBackgroundView()
}
#endif
