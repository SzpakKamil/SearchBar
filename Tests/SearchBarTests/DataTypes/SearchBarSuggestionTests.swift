//
//  SearchBarSuggestionTests.swift
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

struct SearchBarSuggestionTests {
    
    // MARK: - Tests for SearchBarSuggestion Initialization
    @Test("Initialization with text, description, and systemName")
    func testInitializationWithDescriptionAndSystemName() async throws {
        let suggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass")
        #expect(suggestion.id == "SearchFind somethingmagnifyingglass", "Expected id to be a concatenation of text, description, and systemName")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == "Find something", "Expected description to match the provided value")
        #expect(suggestion.systemName == "magnifyingglass", "Expected systemName to match the provided value")
        #expect(suggestion.token == nil, "Expected token to be nil by default")
    }
    
    @Test("Initialization with text, description nil, and systemName")
    func testInitializationWithNilDescriptionAndSystemName() async throws {
        let suggestion = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass")
        #expect(suggestion.id == "Searchmagnifyingglass", "Expected id to be a concatenation of text and systemName when description is nil")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == nil, "Expected description to be nil")
        #expect(suggestion.systemName == "magnifyingglass", "Expected systemName to match the provided value")
        #expect(suggestion.token == nil, "Expected token to be nil by default")
    }
    
    @Test("Initialization with text, description, and systemName nil")
    func testInitializationWithDescriptionAndNilSystemName() async throws {
        let suggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: nil)
        #expect(suggestion.id == "SearchFind something", "Expected id to be a concatenation of text and description when systemName is nil")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == "Find something", "Expected description to match the provided value")
        #expect(suggestion.systemName == nil, "Expected systemName to be nil")
        #expect(suggestion.token == nil, "Expected token to be nil by default")
    }
    
    @Test("Initialization with text, description nil, and systemName nil")
    func testInitializationWithNilDescriptionAndNilSystemName() async throws {
        let suggestion = SearchBarSuggestion(text: "Search", description: nil, systemName: nil)
        #expect(suggestion.id == "Search", "Expected id to be just the text when both description and systemName are nil")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == nil, "Expected description to be nil")
        #expect(suggestion.systemName == nil, "Expected systemName to be nil")
        #expect(suggestion.token == nil, "Expected token to be nil by default")
    }
    
    @Test("Initialization with text, description, systemName, and token")
    func testInitializationWithToken() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let suggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token)
        #expect(suggestion.id == "SearchFind somethingmagnifyingglass", "Expected id to be a concatenation of text, description, and systemName")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == "Find something", "Expected description to match the provided value")
        #expect(suggestion.systemName == "magnifyingglass", "Expected systemName to match the provided value")
        #expect(suggestion.token == token, "Expected token to match the provided value")
    }
    
    @Test("Initialization with text, description nil, systemName, and token")
    func testInitializationWithNilDescriptionTokenAndSystemName() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let suggestion = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass", token: token)
        #expect(suggestion.id == "Searchmagnifyingglass", "Expected id to be a concatenation of text and systemName when description is nil")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == nil, "Expected description to be nil")
        #expect(suggestion.systemName == "magnifyingglass", "Expected systemName to match the provided value")
        #expect(suggestion.token == token, "Expected token to match the provided value")
    }
    
    @Test("Initialization with text, description nil, systemName nil, and token")
    func testInitializationWithNilDescriptionNilSystemNameAndToken() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let suggestion = SearchBarSuggestion(text: "Search", description: nil, systemName: nil, token: token)
        #expect(suggestion.id == "Search", "Expected id to be just the text when both description and systemName are nil")
        #expect(suggestion.text == "Search", "Expected text to match the provided value")
        #expect(suggestion.description == nil, "Expected description to be nil")
        #expect(suggestion.systemName == nil, "Expected systemName to be nil")
        #expect(suggestion.token == token, "Expected token to match the provided value")
    }
    
    // MARK: - Tests for Codable Conformance (Encoding and Decoding)
    @Test("Encoding SearchBarSuggestion")
    func testEncoding() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let suggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token)
        let encoder = JSONEncoder()
        let encodedData = try encoder.encode(suggestion)
        
        // Use JSONSerialization to parse the encoded data into a dictionary
        let jsonObject = try JSONSerialization.jsonObject(with: encodedData, options: [])
        let decodedJSON = try #require(jsonObject as? [String: Any], "Failed to parse encoded data as JSON dictionary")
        
        #expect(decodedJSON["id"] as? String == "SearchFind somethingmagnifyingglass", "Expected encoded id to match the suggestion's id")
        #expect(decodedJSON["text"] as? String == "Search", "Expected encoded text to match the suggestion's text")
        #expect(decodedJSON["description"] as? String == "Find something", "Expected encoded description to match the suggestion's description")
        #expect(decodedJSON["systemName"] as? String == "magnifyingglass", "Expected encoded systemName to match the suggestion's systemName")
        
        let tokenDict = try #require(decodedJSON["token"] as? [String: Any], "Failed to parse token from encoded JSON")
        let tokenID = try #require(tokenDict["id"] as? String, "Failed to parse token id from encoded JSON")
        #expect(tokenID == "Tokenstar", "Expected encoded token id to match the token's id")
    }
    
    @Test("Decoding SearchBarSuggestion with nil description")
    func testDecodingWithNilDescription() async throws {
        let json = """
        {
            "id": "Searchmagnifyingglass",
            "text": "Search",
            "systemName": "magnifyingglass",
            "token": {
                "id": "Tokenstar",
                "text": "Token",
                "systemName": "star"
            }
        }
        """.data(using: .utf8)!
        
        let decoder = JSONDecoder()
        let suggestion = try decoder.decode(SearchBarSuggestion.self, from: json)
        
        #expect(suggestion.id == "Searchmagnifyingglass", "Expected decoded id to match the JSON value when description is nil")
        #expect(suggestion.text == "Search", "Expected decoded text to match the JSON value")
        #expect(suggestion.description == nil, "Expected decoded description to be nil")
        #expect(suggestion.systemName == "magnifyingglass", "Expected decoded systemName to match the JSON value")
        #expect(suggestion.token?.id == "Tokenstar", "Expected decoded token id to match the JSON value")
    }
    
    @Test("Encode and decode SearchBarSuggestion round trip")
    func testEncodeDecode() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let originalSuggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token)
        let originalSuggestionWithNilDescription = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass", token: token)
        
        // Encode the suggestion with description
        let encoder = JSONEncoder()
        let encodedData = try encoder.encode(originalSuggestion)
        let encodedDataWithNilDescription = try encoder.encode(originalSuggestionWithNilDescription)
        
        // Decode the suggestions
        let decoder = JSONDecoder()
        let decodedSuggestion = try decoder.decode(SearchBarSuggestion.self, from: encodedData)
        let decodedSuggestionWithNilDescription = try decoder.decode(SearchBarSuggestion.self, from: encodedDataWithNilDescription)
        
        // Verify that the decoded suggestions match the originals
        #expect(decodedSuggestion == originalSuggestion, "Expected decoded suggestion to be equal to the original suggestion with description")
        #expect(decodedSuggestion.id == originalSuggestion.id, "Expected decoded id to match the original id")
        #expect(decodedSuggestion.text == originalSuggestion.text, "Expected decoded text to match the original text")
        #expect(decodedSuggestion.description == originalSuggestion.description, "Expected decoded description to match the original description")
        #expect(decodedSuggestion.systemName == originalSuggestion.systemName, "Expected decoded systemName to match the original systemName")
        #expect(decodedSuggestion.token == originalSuggestion.token, "Expected decoded token to match the original token")
        
        #expect(decodedSuggestionWithNilDescription == originalSuggestionWithNilDescription, "Expected decoded suggestion to be equal to the original suggestion with nil description")
        #expect(decodedSuggestionWithNilDescription.id == originalSuggestionWithNilDescription.id, "Expected decoded id to match the original id when description is nil")
        #expect(decodedSuggestionWithNilDescription.text == originalSuggestionWithNilDescription.text, "Expected decoded text to match the original text when description is nil")
        #expect(decodedSuggestionWithNilDescription.description == nil, "Expected decoded description to be nil")
        #expect(decodedSuggestionWithNilDescription.systemName == originalSuggestionWithNilDescription.systemName, "Expected decoded systemName to match the original systemName when description is nil")
        #expect(decodedSuggestionWithNilDescription.token == originalSuggestionWithNilDescription.token, "Expected decoded token to match the original token when description is nil")
    }
    
    // MARK: - Tests for Equatable Conformance
    @Test("SearchBarSuggestion equality conformance")
    func testEquality() async throws {
        let token1 = SearchBarToken(text: "Token", systemName: "star")
        let token2 = SearchBarToken(text: "Token", systemName: "star")
        let token3 = SearchBarToken(text: "Different", systemName: "star")
        let suggestion1 = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token1)
        let suggestion2 = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token2)
        let suggestion3 = SearchBarSuggestion(text: "Filter", description: "Find something", systemName: "magnifyingglass", token: token1)
        let suggestion4 = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass", token: token1)
        let suggestion5 = SearchBarSuggestion(text: "Search", description: "Different", systemName: "magnifyingglass", token: token1)
        let suggestion6 = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass", token: token3)
        
        #expect(suggestion1 == suggestion2, "Expected suggestions with the same id and same token to be equal")
        #expect(suggestion1 != suggestion3, "Expected suggestions with different text to be unequal")
        #expect(suggestion1 != suggestion4, "Expected suggestions with different description (nil vs. present) to be unequal")
        #expect(suggestion1 != suggestion5, "Expected suggestions with different description to be unequal")
        #expect(suggestion4 == suggestion4, "Expected suggestion with nil description to equal itself")
        #expect(suggestion4 != suggestion6, "Expected suggestions with same description (nil) but different token to be unequal")
    }
    
    // MARK: - Tests for Comparable Conformance
    @Test("SearchBarSuggestion comparable conformance")
    func testComparable() async throws {
        let suggestion1 = SearchBarSuggestion(text: "Apple", description: "Fruit")
        let suggestion2 = SearchBarSuggestion(text: "Banana", description: "Fruit")
        let suggestion3 = SearchBarSuggestion(text: "Apple", description: nil)
        let suggestion4 = SearchBarSuggestion(text: "Apple", description: "Fruit")
        let suggestion5 = SearchBarSuggestion(text: "Apple", description: nil)
        
        #expect(suggestion1 < suggestion2, "Expected suggestion with text 'Apple' to be less than 'Banana' when texts differ")
        #expect(suggestion2 > suggestion1, "Expected suggestion with text 'Banana' to be greater than 'Apple' when texts differ")
        #expect(suggestion1 > suggestion3, "Expected suggestion with text 'Apple' and description 'Fruit' to be greater than nil description (lhs present, rhs nil)")
        #expect(suggestion3 < suggestion1, "Expected suggestion with text 'Apple' and description nil to be less than description 'Fruit' (lhs nil, rhs present)")
        #expect(suggestion3 <= suggestion5, "Expected suggestions with text 'Apple' and both descriptions nil to be equal")
        #expect(suggestion1 <= suggestion4, "Expected suggestions with same text 'Apple' and same description 'Fruit' to be equal")
    }
    
    // MARK: - Tests for Hashable Conformance
    @Test("SearchBarSuggestion hashable conformance")
    func testHashable() async throws {
        let token = SearchBarToken(text: "Token", systemName: "star")
        let suggestion1 = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token)
        let suggestion2 = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass", token: token)
        let suggestion3 = SearchBarSuggestion(text: "Filter", description: nil, systemName: "magnifyingglass", token: token)
        let suggestion4 = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass", token: token)
        
        var suggestionSet = Set<SearchBarSuggestion>()
        suggestionSet.insert(suggestion1)
        suggestionSet.insert(suggestion2)
        suggestionSet.insert(suggestion3)
        suggestionSet.insert(suggestion4)
        
        #expect(suggestionSet.count == 3, "Expected set to contain 3 unique suggestions, with suggestion1 and suggestion2 equal, and suggestion4 different due to description nil")
        #expect(suggestionSet.contains(suggestion1), "Expected set to contain suggestion1")
        #expect(suggestionSet.contains(suggestion3), "Expected set to contain suggestion3")
        #expect(suggestionSet.contains(suggestion4), "Expected set to contain suggestion4")
    }
    
    // MARK: - Tests for Identifiable Conformance
    @Test("SearchBarSuggestion identifiable conformance")
    func testIdentifiable() async throws {
        let suggestion = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass")
        let suggestionWithNilDescription = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass")
        #expect(suggestion.id == "SearchFind somethingmagnifyingglass", "Expected identifiable id to match the suggestion's id with description")
        #expect(suggestionWithNilDescription.id == "Searchmagnifyingglass", "Expected identifiable id to match the suggestion's id with nil description")
    }
    
    // MARK: - Tests for Computed Property (UISearchSuggestionItem on non-macOS)
    @Test("UISearchSuggestionItem computed property on supported platforms")
    @available(iOS 16.0, *)
    @MainActor
    func testUISearchSuggestionItem() async throws {
        #if !os(macOS)
        // Test with systemName present
        let suggestionWithIcon = SearchBarSuggestion(text: "Search", description: "Find something", systemName: "magnifyingglass")
        let uiSuggestionWithIcon = suggestionWithIcon.suggestion
        
        #expect(uiSuggestionWithIcon.localizedSuggestion == "Search", "Expected UISearchSuggestionItem localizedSuggestion to match the suggestion's text when systemName is present")
        #expect(uiSuggestionWithIcon.localizedDescription == "Find something", "Expected UISearchSuggestionItem localizedDescription to match the suggestion's description when systemName is present")
        
        // Test with systemName nil
        let suggestionWithoutIcon = SearchBarSuggestion(text: "Search", description: "Find something", systemName: nil)
        let uiSuggestionWithoutIcon = suggestionWithoutIcon.suggestion
        
        #expect(uiSuggestionWithoutIcon.localizedSuggestion == "Search", "Expected UISearchSuggestionItem localizedSuggestion to match the suggestion's text when systemName is nil")
        #expect(uiSuggestionWithoutIcon.localizedDescription == "Find something", "Expected UISearchSuggestionItem localizedDescription to match the suggestion's description when systemName is nil")
        
        // Test with description nil
        let suggestionWithNilDescription = SearchBarSuggestion(text: "Search", description: nil, systemName: "magnifyingglass")
        let uiSuggestionWithNilDescription = suggestionWithNilDescription.suggestion
        
        #expect(uiSuggestionWithNilDescription.localizedSuggestion == "Search", "Expected UISearchSuggestionItem localizedSuggestion to match the suggestion's text when description is nil")
        #expect(uiSuggestionWithNilDescription.localizedDescription == nil, "Expected UISearchSuggestionItem localizedDescription to be nil when description is nil")
        
        #if os(iOS)
        // Verify icon behavior on iOS
        let expectedIcon = UIImage(systemName: "magnifyingglass")
        #expect(uiSuggestionWithIcon.iconImage?.pngData() == expectedIcon?.pngData(), "Expected UISearchSuggestionItem iconImage to match the system image for 'magnifyingglass' when systemName is present")
        #expect(uiSuggestionWithoutIcon.iconImage == nil, "Expected UISearchSuggestionItem iconImage to be nil when systemName is nil")
        #expect(uiSuggestionWithNilDescription.iconImage?.pngData() == expectedIcon?.pngData(), "Expected UISearchSuggestionItem iconImage to match the system image for 'magnifyingglass' when description is nil")
        #else
        // Verify icon behavior on non-iOS platforms (e.g., watchOS, visionOS)
        #expect(uiSuggestionWithIcon.iconImage == nil, "Expected UISearchSuggestionItem iconImage to be nil on non-iOS platforms when systemName is present")
        #expect(uiSuggestionWithoutIcon.iconImage == nil, "Expected UISearchSuggestionItem iconImage to be nil on non-iOS platforms when systemName is nil")
        #expect(uiSuggestionWithNilDescription.iconImage == nil, "Expected UISearchSuggestionItem iconImage to be nil on non-iOS platforms when description is nil")
        #endif
        #endif
    }
}
