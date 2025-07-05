//
//  SearchBarCancelButtonDisplayModeTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
#if canImport(Testing)
import Testing
@testable import SearchBar

struct SearchBarCancelButtonDisplayModeTests {
    
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
#endif
