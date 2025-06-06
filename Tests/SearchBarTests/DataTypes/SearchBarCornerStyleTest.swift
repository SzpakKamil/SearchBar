//
//  SearchBarCornerStyleTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import Foundation
import Testing
@testable import SearchBar

struct SearchBarCornerStyleTests {
    
    // MARK: - Capsule Style Tests
    @Test("Capsule style corner radius on visionOS")
    func testCapsuleStyleVisionOS() async throws {
        #if os(visionOS)
        #expect(SearchBarStyle.capsule.cornerRadius == 22, "Expected capsule style to have a corner radius of 22 on visionOS")
        #endif
    }
    
    @Test("Capsule style corner radius on non-visionOS")
    func testCapsuleStyleNonVisionOS() async throws {
        #if !os(visionOS)
        #expect(SearchBarStyle.capsule.cornerRadius == 18, "Expected capsule style to have a corner radius of 18 on non-visionOS platforms")
        #endif
    }
    
    @Test("Capsule style matches SearchBarCornerStyle")
    func testCapsuleStyleMatch() async throws {
        #expect(SearchBarStyle.capsule.cornerRadius == SearchBarCornerStyle.capsule.cornerRadius, "Expected capsule style to match the SearchBarCornerStyle capsule value")
    }
    
    // MARK: - Rectangular Style Tests
    @Test("Rectangular style corner radius")
    func testRectangularStyle() async throws {
        #expect(SearchBarStyle.rectangle.cornerRadius == 0, "Expected rectangle style to have a corner radius of 0")
        #expect(SearchBarStyle.rectangle.cornerRadius == SearchBarCornerStyle.rectangle.cornerRadius, "Expected rectangle style to match the SearchBarCornerStyle rectangle value")
    }
    
    // MARK: - Rounded Style Tests
    @Test("Rounded style corner radius on macOS")
    func testRoundedStyleMacOS() async throws {
        #if os(macOS)
        #expect(SearchBarStyle.rounded.cornerRadius == 5, "Expected rounded style to have a corner radius of 5 on macOS")
        #endif
    }
    
    @Test("Rounded style corner radius on non-macOS")
    func testRoundedStyleNonMacOS() async throws {
        #if !os(macOS)
        #expect(SearchBarStyle.rounded.cornerRadius == 10, "Expected rounded style to have a corner radius of 10 on non-macOS platforms")
        #endif
    }
    
    @Test("Rounded style matches SearchBarCornerStyle")
    func testRoundedStyleMatch() async throws {
        #expect(SearchBarStyle.rounded.cornerRadius == SearchBarCornerStyle.rounded.cornerRadius, "Expected rounded style to match the SearchBarCornerStyle rounded value")
    }
    
}
