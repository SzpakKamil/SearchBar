//
//  SearchBarTests.swift
//  SearchBar
//
//  Created by KamilSzpak on 05/06/2025.
//

import SwiftUI
import Testing
@testable import SearchBar

struct SearchBarStyleTests {
    
    // MARK: - Tests for SearchBarStyle with Custom Corner Radius
    @Test("Custom corner radius style initialization")
    func testCustomCornerRadiusStyle() async throws {
        let customCornerRadiusStyle = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customCornerRadiusStyle.cornerRadius == 15, "Expected custom style to have a corner radius of 15")
        #expect(customCornerRadiusStyle.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customCornerRadiusStyle.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customCornerRadiusStyle.backgroundColor == .green, "Expected custom style to have a background color of green")
        #expect(customCornerRadiusStyle.tokenBackground == nil, "Expected custom style to not have a token background color")
        #expect(customCornerRadiusStyle.usesCustomBackground == true, "Expected custom style to use custom background when backgroundColor is specified")
    }
    
    @Test("Custom corner radius style initialization with nil backgroundColor")
    func testCustomCornerRadiusStyleWithNilBackground() async throws {
        let customCornerRadiusStyle = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red)
        #expect(customCornerRadiusStyle.cornerRadius == 15, "Expected custom style to have a corner radius of 15")
        #expect(customCornerRadiusStyle.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customCornerRadiusStyle.tintColor == .red, "Expected custom style to have a tint color of red")
        #if !os(macOS)
        #expect(customCornerRadiusStyle.backgroundColor == Color(.secondarySystemBackground), "Expected custom style to have default secondarySystemBackground on non-macOS when backgroundColor is nil")
        #else
        let defaultColor = NSColor(name: nil, dynamicProvider: { appearance in
            if appearance.name == .aqua{
                return NSColor.white
            }else{
                return NSColor.quinaryLabel
            }
        })
        let areColorsSame = customCornerRadiusStyle.backgroundColor.resolve(in: .init()).cgColor.components?[0] == defaultColor.cgColor.components?[0] &&
                            customCornerRadiusStyle.backgroundColor.resolve(in: .init()).cgColor.components?[1] == defaultColor.cgColor.components?[1] &&
                            customCornerRadiusStyle.backgroundColor.resolve(in: .init()).cgColor.components?[2] == defaultColor.cgColor.components?[2]
        #expect(areColorsSame, "Expected custom style to have default light/dark background on macOS when backgroundColor is nil")
        #endif
        #expect(customCornerRadiusStyle.tokenBackground == nil, "Expected custom style to not have a token background color")
        #expect(customCornerRadiusStyle.usesCustomBackground == false, "Expected custom style to not use custom background when backgroundColor is nil")
    }
    
    // MARK: - Tests for SearchBarStyle with Predefined Corner Style
    @Test("Custom style with capsule corner radius initialization")
    func testCustomStyleWithCapsule() async throws {
        let customStyle = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle.cornerRadius == SearchBarCornerStyle.capsule.cornerRadius, "Expected custom style with capsule corner radius to have the same corner radius as capsule style")
        #expect(customStyle.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyle.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customStyle.backgroundColor == .green, "Expected custom style to have a background color of green")
        #expect(customStyle.tokenBackground == nil, "Expected custom style with capsule corner radius to not have a token background color")
        #expect(customStyle.usesCustomBackground == true, "Expected custom style to use custom background when backgroundColor is specified")
    }
    
    @Test("Custom style with capsule and nil backgroundColor")
    func testCustomStyleWithCapsuleAndNilBackground() async throws {
        let customStyle = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red)
        #expect(customStyle.cornerRadius == SearchBarCornerStyle.capsule.cornerRadius, "Expected custom style with capsule corner radius to have the same corner radius as capsule style")
        #expect(customStyle.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyle.tintColor == .red, "Expected custom style to have a tint color of red")
        #if !os(macOS)
        #expect(customStyle.backgroundColor == Color(.secondarySystemBackground), "Expected custom style to have default secondarySystemBackground on non-macOS when backgroundColor is nil")
        #else
        let defaultColor = NSColor(name: nil, dynamicProvider: { appearance in
            if appearance.name == .aqua{
                return NSColor.white
            }else{
                return NSColor.quinaryLabel
            }
        })
        let areColorsSame = customStyle.backgroundColor.resolve(in: .init()).cgColor.components?[0] == defaultColor.cgColor.components?[0] &&
                            customStyle.backgroundColor.resolve(in: .init()).cgColor.components?[1] == defaultColor.cgColor.components?[1] &&
                            customStyle.backgroundColor.resolve(in: .init()).cgColor.components?[2] == defaultColor.cgColor.components?[2]

        #expect(areColorsSame, "Expected custom style to have default light/dark background on macOS when backgroundColor is nil")
        #endif
        #expect(customStyle.tokenBackground == nil, "Expected custom style with capsule corner radius to not have a token background color")
        #expect(customStyle.usesCustomBackground == false, "Expected custom style to not use custom background when backgroundColor is nil")
    }
    
    // MARK: - Tests for SearchBarStyle with Token Background (Non-macOS)
    @Test("Custom style with token background and corner radius")
    func testCustomStyleWithTokenAndCornerRadius() async throws {
        #if !os(macOS)
        let customStyleWithToken = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red, tokenBackground: .pink, backgroundColor: .green)
        #expect(customStyleWithToken.cornerRadius == 15, "Expected custom style to have a corner radius of 15")
        #expect(customStyleWithToken.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyleWithToken.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customStyleWithToken.backgroundColor == .green, "Expected custom style to have a background color of green")
        #expect(customStyleWithToken.tokenBackground == .pink, "Expected custom style to have a token background color of pink")
        #expect(customStyleWithToken.usesCustomBackground == true, "Expected custom style to use custom background when backgroundColor is specified")
        #endif
    }
    
    @Test("Custom style with token background and nil backgroundColor")
    func testCustomStyleWithTokenAndNilBackground() async throws {
        #if !os(macOS)
        let customStyleWithToken = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red, tokenBackground: .pink)
        #expect(customStyleWithToken.cornerRadius == 15, "Expected custom style to have a corner radius of 15")
        #expect(customStyleWithToken.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyleWithToken.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customStyleWithToken.backgroundColor == Color(.secondarySystemBackground), "Expected custom style to have default secondarySystemBackground on non-macOS when backgroundColor is nil")
        #expect(customStyleWithToken.tokenBackground == .pink, "Expected custom style to have a token background color of pink")
        #expect(customStyleWithToken.usesCustomBackground == false, "Expected custom style to not use custom background when backgroundColor is nil")
        #endif
    }
    
    @Test("Custom style with token background and capsule style")
    func testCustomStyleWithTokenAndCapsule() async throws {
        #if !os(macOS)
        let customStyleWithTokenDefaultCornerRadius = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .pink, backgroundColor: .green)
        #expect(customStyleWithTokenDefaultCornerRadius.cornerRadius == SearchBarCornerStyle.capsule.cornerRadius, "Expected custom style to have the same corner radius as capsule style")
        #expect(customStyleWithTokenDefaultCornerRadius.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyleWithTokenDefaultCornerRadius.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customStyleWithTokenDefaultCornerRadius.backgroundColor == .green, "Expected custom style to have a background color of green")
        #expect(customStyleWithTokenDefaultCornerRadius.tokenBackground == .pink, "Expected custom style to have a token background color of pink")
        #expect(customStyleWithTokenDefaultCornerRadius.usesCustomBackground == true, "Expected custom style to use custom background when backgroundColor is specified")
        #endif
    }
    
    @Test("Custom style with token background, capsule, and nil backgroundColor")
    func testCustomStyleWithTokenCapsuleAndNilBackground() async throws {
        #if !os(macOS)
        let customStyleWithTokenDefaultCornerRadius = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .pink)
        #expect(customStyleWithTokenDefaultCornerRadius.cornerRadius == SearchBarCornerStyle.capsule.cornerRadius, "Expected custom style to have the same corner radius as capsule style")
        #expect(customStyleWithTokenDefaultCornerRadius.textColor == .blue, "Expected custom style to have a text color of blue")
        #expect(customStyleWithTokenDefaultCornerRadius.tintColor == .red, "Expected custom style to have a tint color of red")
        #expect(customStyleWithTokenDefaultCornerRadius.backgroundColor == Color(.secondarySystemBackground), "Expected custom style to have default secondarySystemBackground on non-macOS when backgroundColor is nil")
        #expect(customStyleWithTokenDefaultCornerRadius.tokenBackground == .pink, "Expected custom style to have a token background color of pink")
        #expect(customStyleWithTokenDefaultCornerRadius.usesCustomBackground == false, "Expected custom style to not use custom background when backgroundColor is nil")
        #endif
    }
    
    // MARK: - Tests for SearchBarStyle Equality Conformance
    @Test("SearchBarStyle equality conformance")
    func testSearchBarStyleEquality() async throws {
        // Same properties except for style
        let customStyle1 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, backgroundColor: .green)
        let customStyle2 = SearchBarStyle(style: .rectangle, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle1 != customStyle2, "Expected styles with different corner styles to be unequal")
        
        // Same properties except for textColor
        let customStyle3 = SearchBarStyle(style: .rounded, textColor: .pink, tint: .red, backgroundColor: .green)
        let customStyle4 = SearchBarStyle(style: .rounded, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle3 != customStyle4, "Expected styles with different text colors to be unequal")
        
        // Same properties except for tint
        let customStyle5 = SearchBarStyle(style: .rounded, textColor: .blue, tint: .purple, backgroundColor: .green)
        let customStyle6 = SearchBarStyle(style: .rounded, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle5 != customStyle6, "Expected styles with different tint colors to be unequal")
        
        // Same properties except for backgroundColor
        let customStyle7 = SearchBarStyle(style: .rounded, textColor: .blue, tint: .red, backgroundColor: .yellow)
        let customStyle8 = SearchBarStyle(style: .rounded, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle7 != customStyle8, "Expected styles with different background colors to be unequal")
        
        // Identical styles
        let customStyle9 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, backgroundColor: .green)
        let customStyle10 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, backgroundColor: .green)
        #expect(customStyle9 == customStyle10, "Expected identical styles to be equal")
        
        // Identical styles with nil backgroundColor
        let customStyle11 = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red)
        let customStyle12 = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red)
        #expect(customStyle11 == customStyle12, "Expected identical styles with nil backgroundColor to be equal")
        
        #if !os(macOS)
        // Same properties except for tokenBackground
        let customStyle13 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .pink, backgroundColor: .green)
        let customStyle14 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .yellow, backgroundColor: .green)
        #expect(customStyle13 != customStyle14, "Expected styles with different token background colors to be unequal")
        
        // Identical styles with tokenBackground
        let customStyle15 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .pink, backgroundColor: .green)
        let customStyle16 = SearchBarStyle(style: .capsule, textColor: .blue, tint: .red, tokenBackground: .pink, backgroundColor: .green)
        #expect(customStyle15 == customStyle16, "Expected identical styles with token background to be equal")
        
        // Identical styles with tokenBackground and nil backgroundColor
        let customStyle17 = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red, tokenBackground: .pink)
        let customStyle18 = SearchBarStyle(cornerRadius: 15, textColor: .blue, tint: .red, tokenBackground: .pink)
        #expect(customStyle17 == customStyle18, "Expected identical styles with token background and nil backgroundColor to be equal")
        #endif
    }
}
