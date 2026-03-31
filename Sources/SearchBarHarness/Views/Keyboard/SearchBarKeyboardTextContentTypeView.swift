//
//  SearchBarKeyboardTextContentTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import HarnessKit
import SearchBar

struct SearchBarKeyboardTextContentTypeView: View {
    #if !os(macOS)
    var body: some View {
        HarnessPreview{ isOn in
            ZStack{
                if isOn{
                    SearchBar(text: .constant(""))
                        .searchBarTextContentType(.telephoneNumber)
                        .searchBarIsFocused(.constant(true))
                        .padding(.horizontal, 5)
                }else{
                    SearchBar(text: .constant(""))
                        .searchBarIsFocused(.constant(true))
                        .padding(.horizontal, 5)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .navigationBarBackButtonHidden()
    }
    #else
    var body: some View{
        SearchBarStyleTextColorView()
    }
    #endif
}

#Preview {
    SearchBarKeyboardTextContentTypeView()
}
