//
//  SearchBarCurrentTokensView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 10/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarCurrentTokensView: View {
    var body: some View {
        HarnessPreview{ isOn in
            ZStack{
                #if os(iOS) || os(visionOS)
                Group{
                    if #available(iOS 16.0, *), isOn{
                        SearchBar(text: .constant(""))
                            .searchBarCurrentTokens(.constant([.init(text: "Triangle", systemName: "triangle.fill"), .init(text: "Circle", systemName: "circle.fill")]))
                            .searchBarIsFocused(.constant(true))
                    }else{
                        SearchBar(text: .constant(""))
                            .searchBarIsFocused(.constant(true))
                    }
                }
                .padding(.horizontal, 5)
                #endif
            }
            
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SearchBarCurrentTokensView()
}
