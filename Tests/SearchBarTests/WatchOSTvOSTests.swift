//
//  WatchOSTvOSTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 19/02/2026.
//

import Foundation
#if canImport(Testing)
import Testing
@testable import SearchBar
import SwiftUI
#if os(watchOS) && os(tvOS)
struct WatchOSTvOSTests {
    // MARK: - Helper Setup
    private var baseSearchBar: SearchBar {
        SearchBar(text: .constant(""))
    }

    @Test("searchBarIsFocused updates correctly on watchOS and tvOS")
    @MainActor
    func testSearchBarIsFocused() async throws {
        var isFocused = false
        let binding = Binding {
            isFocused
        } set: { newValue in
            isFocused = newValue
        }
        let updatedSearchBar = baseSearchBar.searchBarIsFocused(binding)
        #expect(updatedSearchBar.isUsingCustomFocus, "Expected isUsingCustomFocus to be true")
        #expect(updatedSearchBar.isFocused.wrappedValue == false, "Expected isFocused to match initial binding value")
        binding.wrappedValue = true
        #expect(updatedSearchBar.isFocused.wrappedValue == true, "Expected isFocused to reflect binding updates")
    }
    
    @Test("searchBarChangeAction updates correctly on watchOS and tvOS")
    @MainActor
    func testSearchBarChangeAction() async throws {
        var testValue = false
        let action: (String) -> Void = { _ in testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarChangeAction(action)
        updatedSearchBar.searchChangeAction?("test")
        #expect(testValue, "Expected searchChangeAction to be set and called")
    }
    
    @Test("searchBarBeginEditingAction updates correctly on watchOS and tvOS")
    @MainActor
    func testSearchBarBeginEditingAction() async throws {
        var testValue = false
        let action: () -> Void = { testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarBeginEditingAction(action)
        updatedSearchBar.searchBeginEditingAction?()
        #expect(testValue, "Expected searchBeginEditingAction to be set and called")
    }
    
    @Test("searchBarEndEditingAction updates correctly on watchOS and tvOS")
    @MainActor
    func testSearchBarEndEditingAction() async throws {
        var testValue = false
        let action: () -> Void = { testValue = true }
        let updatedSearchBar = baseSearchBar.searchBarEndEditingAction(action)
        updatedSearchBar.searchEndEditingAction?()
        #expect(testValue, "Expected searchEndEditingAction to be set and called")
    }
}
#endif
#endif
