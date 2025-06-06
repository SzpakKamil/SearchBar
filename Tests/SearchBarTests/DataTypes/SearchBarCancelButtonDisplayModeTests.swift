//
//  SearchBarCancelButtonDisplayModeTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
import Testing
@testable import SearchBar

struct SearchBarCancelButtonDisplayModeTests {
    
    // MARK: - Tests for Initialization and Raw Values
    @Test("Initialization with raw values")
    func testInitializationWithRawValues() async throws {
        #expect(SearchBarCancelButtonDisplayMode(rawValue: 0) == .never, "Expected raw value 0 to map to .never")
        #expect(SearchBarCancelButtonDisplayMode(rawValue: 1) == .always, "Expected raw value 1 to map to .always")
        #expect(SearchBarCancelButtonDisplayMode(rawValue: 2) == .whileEditing, "Expected raw value 2 to map to .whileEditing")
        #expect(SearchBarCancelButtonDisplayMode(rawValue: 3) == nil, "Expected invalid raw value 3 to return nil")
    }
    
    // MARK: - Tests for Identifiable Conformance
    @Test("Identifiable conformance")
    func testIdentifiable() async throws {
        #expect(SearchBarCancelButtonDisplayMode.never.id == 0, "Expected .never id to be 0")
        #expect(SearchBarCancelButtonDisplayMode.always.id == 1, "Expected .always id to be 1")
        #expect(SearchBarCancelButtonDisplayMode.whileEditing.id == 2, "Expected .whileEditing id to be 2")
    }
    
    // MARK: - Tests for Equatable Conformance
    @Test("Equatable conformance")
    func testEquality() async throws {
        #expect(SearchBarCancelButtonDisplayMode.never == .never, "Expected .never to equal .never")
        #expect(SearchBarCancelButtonDisplayMode.always == .always, "Expected .always to equal .always")
        #expect(SearchBarCancelButtonDisplayMode.whileEditing == .whileEditing, "Expected .whileEditing to equal .whileEditing")
        #expect(SearchBarCancelButtonDisplayMode.never != .always, "Expected .never to not equal .always")
        #expect(SearchBarCancelButtonDisplayMode.always != .whileEditing, "Expected .always to not equal .whileEditing")
    }
    
    // MARK: - Tests for Comparable Conformance
    @Test("Comparable conformance")
    func testComparable() async throws {
        #expect(SearchBarCancelButtonDisplayMode.never < .always, "Expected .never to be less than .always")
        #expect(SearchBarCancelButtonDisplayMode.always < .whileEditing, "Expected .always to be less than .whileEditing")
        #expect(SearchBarCancelButtonDisplayMode.never <= .never, "Expected .never to be less than or equal to .never")
        #expect(SearchBarCancelButtonDisplayMode.always >= .always, "Expected .always to be greater than or equal to .always")
        #expect(!(SearchBarCancelButtonDisplayMode.whileEditing < .never), "Expected .whileEditing to not be less than .never")
    }
    
    // MARK: - Tests for Codable Conformance
    @Test("Encoding SearchBarCancelButtonDisplayMode")
    func testEncoding() async throws {
        let encoder = JSONEncoder()
        let encodedNever = try encoder.encode(SearchBarCancelButtonDisplayMode.never)
        let encodedAlways = try encoder.encode(SearchBarCancelButtonDisplayMode.always)
        let encodedWhileEditing = try encoder.encode(SearchBarCancelButtonDisplayMode.whileEditing)
        
        let decodedNever = try JSONDecoder().decode(Int.self, from: encodedNever)
        let decodedAlways = try JSONDecoder().decode(Int.self, from: encodedAlways)
        let decodedWhileEditing = try JSONDecoder().decode(Int.self, from: encodedWhileEditing)
        
        #expect(decodedNever == 0, "Expected .never to encode as 0")
        #expect(decodedAlways == 1, "Expected .always to encode as 1")
        #expect(decodedWhileEditing == 2, "Expected .whileEditing to encode as 2")
    }
    
    @Test("Decoding SearchBarCancelButtonDisplayMode")
    func testDecoding() async throws {
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        
        let neverData = try encoder.encode(0)
        let alwaysData = try encoder.encode(1)
        let whileEditingData = try encoder.encode(2)
        
        let decodedNever = try decoder.decode(SearchBarCancelButtonDisplayMode.self, from: neverData)
        let decodedAlways = try decoder.decode(SearchBarCancelButtonDisplayMode.self, from: alwaysData)
        let decodedWhileEditing = try decoder.decode(SearchBarCancelButtonDisplayMode.self, from: whileEditingData)
        
        #expect(decodedNever == .never, "Expected 0 to decode as .never")
        #expect(decodedAlways == .always, "Expected 1 to decode as .always")
        #expect(decodedWhileEditing == .whileEditing, "Expected 2 to decode as .whileEditing")
    }
    
    // MARK: - Tests for Hashable Conformance
    @Test("Hashable conformance")
    func testHashable() async throws {
        let set: Set<SearchBarCancelButtonDisplayMode> = [.never, .always, .whileEditing, .never]
        #expect(set.count == 3, "Expected set to contain 3 unique elements, with .never appearing once")
        #expect(set.contains(.never), "Expected set to contain .never")
        #expect(set.contains(.always), "Expected set to contain .always")
        #expect(set.contains(.whileEditing), "Expected set to contain .whileEditing")
    }
}
