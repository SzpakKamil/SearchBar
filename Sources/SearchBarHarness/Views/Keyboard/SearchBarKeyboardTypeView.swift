//
//  SearchBarKeyboardTypeView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarKeyboardTypeView: View {
    #if !os(macOS)
    var body: some View {
        HarnessPreview([UIKeyboardType.default, .numbersAndPunctuation, .URL, .numberPad, .phonePad, .namePhonePad, .emailAddress, .decimalPad, .twitter, .webSearch, .alphabet] ){ variant in
            ZStack{
                SearchBar(text: .constant(""))
                    .searchBarKeyboardType(variant)
                    .searchBarIsFocused(.constant(true))
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
    #else
    
    var body: some View{
        SearchBarStyleTextColorView()
    }
    #endif
}

#Preview {
    SearchBarKeyboardTypeView()
}
