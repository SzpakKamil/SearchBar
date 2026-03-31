//
//  SearchBarStyleTokenBackgroundView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//


import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleTokenBackgroundView: View {
    var body: some View {
        HarnessPreview{ isOn in
            ZStack{
                #if !os(macOS) && !os(tvOS) && !os(watchOS)
                if #available(iOS 16.0, *), isOn{
                    SearchBar(text: .constant(""))
                        .searchBarStyle(tokenBackground: .red)
                        .searchBarCurrentTokens(.constant([SearchBarToken(text: "Hello", systemName: "globe")]))
                }else if #available(iOS 16.0, *){
                    SearchBar(text: .constant(""))
                        .searchBarCurrentTokens(.constant([SearchBarToken(text: "Hello", systemName: "globe")]))
                }
                #else
                SearchBar(text: .constant(""))
                #endif
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SearchBarStyleTokenBackgroundView()
}
