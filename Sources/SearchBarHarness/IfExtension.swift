//
//  IfExtension.swift
//  SymbolPicker
//
//  Created by Kamil Szpak on 23/02/2026.
//

import SwiftUI
import SearchBar

extension View {
    @ViewBuilder func `if`<Transform: View>(@ViewBuilder transform: (Self) -> Transform) -> some View {
        transform(self)
    }
}

extension SearchBar{
    func versionSpecificisFocused(_ value: Binding<Bool>) -> Self{
        if #available(macOS 12.0, *){
            self
                .searchBarIsFocused(value)
        }else{
            self
        }
    }
}
extension View{
    @ViewBuilder
    func versionSpecificNavigationButtonHidden() -> some View{
        if #available(macOS 13.0, *){
            self
                .navigationBarBackButtonHidden()
        }else{
            self
        }
    }
}
