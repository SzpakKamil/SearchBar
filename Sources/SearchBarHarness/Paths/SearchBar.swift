//
//  SearchBar.swift
//  PackagesPhotosCreatorUITests
//
//  Created by Kamil Szpak on 12/11/2025.
//

import Foundation
import HarnessKit

public enum SearchBarHK: PathProject {
    public static let name = "SearchBar"
    
    #if os(macOS)
    public static var folders: [any PathFolder.Type] = [
        Style.self,
        SuggestionsTokens.self,
        DisplayModes.self,
    ]
    #elseif os(tvOS) || os(watchOS)
    public static var folders: [any PathFolder.Type] = [
        Style.self,
    ]
    #else
    public static var folders: [any PathFolder.Type] = [
        Style.self,
        SuggestionsTokens.self,
        Keyboard.self,
        DisplayModes.self,
    ]
    #endif
}

