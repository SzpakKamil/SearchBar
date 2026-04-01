//
//  SearchBarStyleMaterialView.swift
//  PackagesPhotosCreator
//
//  Created by Kamil Szpak on 07/01/2026.
//

import SwiftUI
import SearchBar
import HarnessKit

struct SearchBarStyleMaterialView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HarnessPreview([SearchBarMaterial.solid, .glass]){ variant in
            ZStack(alignment: .top){
                LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
                    .opacity(colorScheme == .dark ? 0.25 : 0.5)
                    .ignoresSafeArea()
                VStack{
                    #if !os(visionOS)
                    if #available(iOS 26.0, visionOS 26.0, tvOS 26.0, watchOS 26.0, macOS 26.0, *){
                        SearchBar(text: .constant(""))
                            .searchBarMaterial(variant)
                            .allowsHitTesting(false)
                            .versionSpecificFocusable()
                            .padding(.horizontal, 5)
                    }
                    #endif
                    Spacer()
                }
            }
            .id(variant)
        }
        #if os(macOS)
        .windowSize(.custom(width: 550, height: 400))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    SearchBarStyleMaterialView()
}
