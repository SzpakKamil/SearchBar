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
            ZStack{
                Group{
                    if isOn{
                        SearchBar(text: .constant("Hello"))
                            .searchBarStyle(tint: .red)
                            .searchBarIsFocused(.constant(true))
                    }else{
                        SearchBar(text: .constant("Hello"))
                            .searchBarIsFocused(.constant(true))
                    }
                }
                .padding(.horizontal, 5)
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
    SearchBarStyleTintColorView()
}
