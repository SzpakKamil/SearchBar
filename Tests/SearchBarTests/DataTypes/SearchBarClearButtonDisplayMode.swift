//
//  SearchBarClearButtonDisplayModeTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
import Testing
import SwiftUI
#if !os(macOS)
import UIKit
#endif
@testable import SearchBar

struct SearchBarClearButtonDisplayModeTests {
    
    // MARK: - Tests for Initialization and Raw Values
    @Test("Initialization with raw values")
    func testInitializationWithRawValues() async throws {
        #expect(SearchBarClearButtonDisplayMode(rawValue: 0) == .always, "Expected raw value 0 to map to .always")
        #expect(SearchBarClearButtonDisplayMode(rawValue: 1) == .never, "Expected raw value 1 to map to .never")
        #expect(SearchBarClearButtonDisplayMode(rawValue: 2) == .whileEditing, "Expected raw value 2 to map to .whileEditing")
        #expect(SearchBarClearButtonDisplayMode(rawValue: 3) == .unlessEditing, "Expected raw value 3 to map to .unlessEditing")
        #expect(SearchBarClearButtonDisplayMode(rawValue: 4) == nil, "Expected invalid raw value 4 to return nil")
    }
    
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
    
    // MARK: - Tests for Codable Conformance
    @Test("Encoding SearchBarClearButtonDisplayMode")
    func testEncoding() async throws {
        let encoder = JSONEncoder()
        let encodedAlways = try encoder.encode(SearchBarClearButtonDisplayMode.always)
        let encodedNever = try encoder.encode(SearchBarClearButtonDisplayMode.never)
        let encodedWhileEditing = try encoder.encode(SearchBarClearButtonDisplayMode.whileEditing)
        let encodedUnlessEditing = try encoder.encode(SearchBarClearButtonDisplayMode.unlessEditing)
        
        let decodedAlways = try JSONDecoder().decode(Int.self, from: encodedAlways)
        let decodedNever = try JSONDecoder().decode(Int.self, from: encodedNever)
        let decodedWhileEditing = try JSONDecoder().decode(Int.self, from: encodedWhileEditing)
        let decodedUnlessEditing = try JSONDecoder().decode(Int.self, from: encodedUnlessEditing)
        
        #expect(decodedAlways == 0, "Expected .always to encode as 0")
        #expect(decodedNever == 1, "Expected .never to encode as 1")
        #expect(decodedWhileEditing == 2, "Expected .whileEditing to encode as 2")
        #expect(decodedUnlessEditing == 3, "Expected .unlessEditing to encode as 3")
    }
    
    @Test("Decoding SearchBarClearButtonDisplayMode")
    func testDecoding() async throws {
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        
        let alwaysData = try encoder.encode(0)
        let neverData = try encoder.encode(1)
        let whileEditingData = try encoder.encode(2)
        let unlessEditingData = try encoder.encode(3)
        
        let decodedAlways = try decoder.decode(SearchBarClearButtonDisplayMode.self, from: alwaysData)
        let decodedNever = try decoder.decode(SearchBarClearButtonDisplayMode.self, from: neverData)
        let decodedWhileEditing = try decoder.decode(SearchBarClearButtonDisplayMode.self, from: whileEditingData)
        let decodedUnlessEditing = try decoder.decode(SearchBarClearButtonDisplayMode.self, from: unlessEditingData)
        
        #expect(decodedAlways == .always, "Expected 0 to decode as .always")
        #expect(decodedNever == .never, "Expected 1 to decode as .never")
        #expect(decodedWhileEditing == .whileEditing, "Expected 2 to decode as .whileEditing")
        #expect(decodedUnlessEditing == .unlessEditing, "Expected 3 to decode as .unlessEditing")
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
