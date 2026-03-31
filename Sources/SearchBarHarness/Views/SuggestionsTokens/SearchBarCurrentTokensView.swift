//
//  SearchBarCurrentTokensView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 10/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

#if os(iOS) || os(visionOS)
struct SearchBarCurrentTokensView: View {
    var body: some View {
        HarnessPreview{ isOn in
            VStack{
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
                                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
                                    .allowsHitTesting(false)
                    .versionSpecificFocusable()
                .padding(.horizontal, 5)
                Spacer()
            }
            .id(isOn)
        }
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarCurrentTokensView()
}
#endif
