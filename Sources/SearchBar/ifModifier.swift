//
//  ifModifier.swift
//  SearchBar
//
//  Created by KamilSzpak on 07/05/2025.
//

import SwiftUI

extension View {
    @ViewBuilder func conditionalModifier(@ViewBuilder transform: (Self) -> some View) -> some View {
        transform(self)
    }
}
