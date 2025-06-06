//
//  SearchBarTokenTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
import Testing
import SwiftUI
#if !os(macOS) && !os(tvOS)
import UIKit
#endif
@testable import SearchBar

struct SearchBarTokenTests {
    
    // MARK: - Tests for SearchBarToken Initialization
    @Test("Initialization with text and systemName")
    func testInitialization() async throws {
        let token = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        #expect(token.id == "Searchmagnifyingglass", "Expected id to be a concatenation of text and systemName")
        #expect(token.text == "Search", "Expected text to match the provided value")
        #expect(token.systemName == "magnifyingglass", "Expected systemName to match the provided value")
    }
    
    // MARK: - Tests for Codable Conformance (Encoding and Decoding)
    @Test("Encoding SearchBarToken")
    func testEncoding() async throws {
        let token = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let encoder = JSONEncoder()
        let encodedData = try encoder.encode(token)
        
        let decodedJSON = try JSONDecoder().decode([String: String].self, from: encodedData)
        #expect(decodedJSON["id"] == "Searchmagnifyingglass", "Expected encoded id to match the token's id")
        #expect(decodedJSON["text"] == "Search", "Expected encoded text to match the token's text")
        #expect(decodedJSON["systemName"] == "magnifyingglass", "Expected encoded systemName to match the token's systemName")
    }
    
    @Test("Decoding SearchBarToken")
    func testDecoding() async throws {
        let json = """
        {
            "id": "Searchmagnifyingglass",
            "text": "Search",
            "systemName": "magnifyingglass"
        }
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        let token = try decoder.decode(SearchBarToken.self, from: json)
        
        #expect(token.id == "Searchmagnifyingglass", "Expected decoded id to be a concatenation of text and systemName")
        #expect(token.text == "Search", "Expected decoded text to match the JSON value")
        #expect(token.systemName == "magnifyingglass", "Expected decoded systemName to match the JSON value")
    }
    
    @Test("Encode and decode SearchBarToken round trip")
    func testEncodeDecode() async throws {
        let originalToken = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        
        // Encode the token
        let encoder = JSONEncoder()
        let encodedData = try encoder.encode(originalToken)
        
        // Decode the token
        let decoder = JSONDecoder()
        let decodedToken = try decoder.decode(SearchBarToken.self, from: encodedData)
        
        // Verify that the decoded token matches the original
        #expect(decodedToken == originalToken, "Expected decoded token to be equal to the original token")
        #expect(decodedToken.id == originalToken.id, "Expected decoded id to match the original id")
        #expect(decodedToken.text == originalToken.text, "Expected decoded text to match the original text")
        #expect(decodedToken.systemName == originalToken.systemName, "Expected decoded systemName to match the original systemName")
    }
    
    // MARK: - Tests for Equatable Conformance
    @Test("SearchBarToken equality conformance")
    func testEquality() async throws {
        let token1 = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let token2 = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let token3 = SearchBarToken(text: "Filter", systemName: "magnifyingglass")
        let token4 = SearchBarToken(text: "Search", systemName: "gear")
        
        #expect(token1 == token2, "Expected tokens with the same id to be equal")
        #expect(token1 != token3, "Expected tokens with different text to be unequal")
        #expect(token1 != token4, "Expected tokens with different systemName to be unequal")
    }
    
    // MARK: - Tests for Comparable Conformance
    @Test("SearchBarToken comparable conformance")
    func testComparable() async throws {
        let token1 = SearchBarToken(text: "Apple", systemName: "magnifyingglass")
        let token2 = SearchBarToken(text: "Banana", systemName: "magnifyingglass")
        let token3 = SearchBarToken(text: "Apple", systemName: "gear")
        
        #expect(token1 < token2, "Expected token with text 'Apple' to be less than 'Banana'")
        #expect(token2 > token1, "Expected token with text 'Banana' to be greater than 'Apple'")
        #expect(token1 <= token3, "Expected tokens with same text to be comparable based on text only")
    }
    
    // MARK: - Tests for Hashable Conformance
    @Test("SearchBarToken hashable conformance")
    func testHashable() async throws {
        let token1 = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let token2 = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let token3 = SearchBarToken(text: "Filter", systemName: "magnifyingglass")
        
        var tokenSet = Set<SearchBarToken>()
        tokenSet.insert(token1)
        tokenSet.insert(token2)
        tokenSet.insert(token3)
        
        #expect(tokenSet.count == 2, "Expected set to contain 2 unique tokens, as token1 and token2 are equal")
        #expect(tokenSet.contains(token1), "Expected set to contain token1")
        #expect(tokenSet.contains(token3), "Expected set to contain token3")
    }
    
    // MARK: - Tests for Identifiable Conformance
    @Test("SearchBarToken identifiable conformance")
    func testIdentifiable() async throws {
        let token = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        #expect(token.id == "Searchmagnifyingglass", "Expected identifiable id to match the token's id")
    }
    
    // MARK: - Tests for Computed Property (UISearchToken on non-macOS and non-tvOS)
    @Test("UISearchToken computed property on supported platforms")
    @MainActor
    func testUISearchToken() async throws {
        #if !os(macOS)
        let token = SearchBarToken(text: "Search", systemName: "magnifyingglass")
        let uiSearchToken = token.searchToken
        #expect(uiSearchToken.representedObject as? String == "Searchmagnifyingglass", "Expected UISearchToken representedObject to match the token's id")
        #endif
    }
}
