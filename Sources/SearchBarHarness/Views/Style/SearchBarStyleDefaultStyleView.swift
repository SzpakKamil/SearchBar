//
//  SearchBarStyleDefaultStyleView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//


import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleDefaultStyleView: View {
    var body: some View {
        HarnessPreview([SearchBarStyle.rounded, .capsule, .rectangle]){ variant in
            ZStack{
                SearchBar(text: .constant(""))
                    .searchBarStyle(variant)
                    .padding(.horizontal, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(variant)
        }
        
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SearchBarStyleScaleView()
}
