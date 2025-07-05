//
//  SearchBarClearButtonDisplayModeTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
#if canImport(Testing)
import Testing
import SwiftUI
#if !os(macOS)
import UIKit
#endif
@testable import SearchBar

struct SearchBarClearButtonDisplayModeTests {
    
    
    // MARK: - Tests for Identifiable Conformance
    @Test("Identifiable conformance")
    func testIdentifiable() async throws {
        #expect(SearchBarClearButtonDisplayMode.always.id == 0, "Expected .always id to be 0")
        #expect(SearchBarClearButtonDisplayMode.never.id == 1, "Expected .never id to be 1")
        #expect(SearchBarClearButtonDisplayMode.whileEditing.id == 2, "Expected .whileEditing id to be 2")
        #expect(SearchBarClearButtonDisplayMode.unlessEditing.id == 3, "Expected .unlessEditing id to be 3")
    }
    
    // MARK: - Tests for Equatable Conformance
    @Test("Equatable conformance")
    func testEquality() async throws {
        #expect(SearchBarClearButtonDisplayMode.always == .always, "Expected .always to equal .always")
        #expect(SearchBarClearButtonDisplayMode.never == .never, "Expected .never to equal .never")
        #expect(SearchBarClearButtonDisplayMode.whileEditing == .whileEditing, "Expected .whileEditing to equal .whileEditing")
        #expect(SearchBarClearButtonDisplayMode.unlessEditing == .unlessEditing, "Expected .unlessEditing to equal .unlessEditing")
        #expect(SearchBarClearButtonDisplayMode.always != .never, "Expected .always to not equal .never")
        #expect(SearchBarClearButtonDisplayMode.whileEditing != .unlessEditing, "Expected .whileEditing to not equal .unlessEditing")
    }
    
    // MARK: - Tests for Comparable Conformance
    @Test("Comparable conformance")
    func testComparable() async throws {
        #expect(SearchBarClearButtonDisplayMode.always < .never, "Expected .always to be less than .never")
        #expect(SearchBarClearButtonDisplayMode.never < .whileEditing, "Expected .never to be less than .whileEditing")
        #expect(SearchBarClearButtonDisplayMode.whileEditing < .unlessEditing, "Expected .whileEditing to be less than .unlessEditing")
        #expect(SearchBarClearButtonDisplayMode.always <= .always, "Expected .always to be less than or equal to .always")
        #expect(SearchBarClearButtonDisplayMode.unlessEditing >= .unlessEditing, "Expected .unlessEditing to be greater than or equal to .unlessEditing")
        #expect(!(SearchBarClearButtonDisplayMode.unlessEditing < .always), "Expected .unlessEditing to not be less than .always")
    }
    
    
    // MARK: - Tests for Hashable Conformance
    @Test("Hashable conformance")
    func testHashable() async throws {
        let set: Set<SearchBarClearButtonDisplayMode> = [.always, .never, .whileEditing, .unlessEditing, .always]
        #expect(set.count == 4, "Expected set to contain 4 unique elements, with .always appearing once")
        #expect(set.contains(.always), "Expected set to contain .always")
        #expect(set.contains(.never), "Expected set to contain .never")
        #expect(set.contains(.whileEditing), "Expected set to contain .whileEditing")
        #expect(set.contains(.unlessEditing), "Expected set to contain .unlessEditing")
    }
    
    // MARK: - Tests for Computed Property (uiTextFieldViewMode on non-macOS)
    @Test("uiTextFieldViewMode computed property on supported platforms")
    func testUITextFieldViewMode() async throws {
        #if !os(macOS)
        #expect(SearchBarClearButtonDisplayMode.always.uiTextFieldViewMode == .always, "Expected .always to map to UITextField.ViewMode.always")
        #expect(SearchBarClearButtonDisplayMode.never.uiTextFieldViewMode == .never, "Expected .never to map to UITextField.ViewMode.never")
        #expect(SearchBarClearButtonDisplayMode.whileEditing.uiTextFieldViewMode == .whileEditing, "Expected .whileEditing to map to UITextField.ViewMode.whileEditing")
        #expect(SearchBarClearButtonDisplayMode.unlessEditing.uiTextFieldViewMode == .unlessEditing, "Expected .unlessEditing to map to UITextField.ViewMode.unlessEditing")
        #endif
    }
}
#endif
