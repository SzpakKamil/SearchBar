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
            ZStack{
                Group{
                    if isOn{
                        SearchBar(text: .constant(""))
                            .searchBarStyle(backgroundColor: .red)
                    }else{
                        SearchBar(text: .constant(""))
                    }
                }
                .padding(.horizontal, 5)
            }
            frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SearchBarStyleBackgroundColorView()
}
