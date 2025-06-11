//
//  SearchBarMacOS.swift
//  SymbolPicker
//
//  Created by KamilSzpak on 11/04/2025.
//

import SwiftUI

#if os(macOS)
public struct SearchBar: View {
    @Binding var text: String
    var style = SearchBarStyle.rounded
    var clearButtonDisplayMode = SearchBarClearButtonDisplayMode.always
    var iconView: AnyView? = nil
    var clearView: AnyView? = nil
    var clearButtonAction: (() -> Void)? = nil
    var searchBeginEditingAction: (() -> Void)? = nil
    var searchEndEditingAction: (() -> Void)? = nil
    var searchChangeAction: ((String) -> Void)? = nil
    var searchSuggestions: Binding<[SearchBarSuggestion]> = .constant([])
    var enabledAutomaticFiltering = false
    var filteringAction: ((String, SearchBarSuggestion)-> Bool)? = nil
    var isUsingCustomFocus = false
    var isFocused: Binding<Bool> = .constant(false)
    var material: SearchBarMaterial = .solid
    var scale: SearchBarScale = .small
    var prompt: String?
    
    var filteredSuggestions: [SearchBarSuggestion]{
        searchSuggestions.wrappedValue.filter{
            if let filteringAction{
                return enabledAutomaticFiltering ? filteringAction(text.trimmingCharacters(in: .whitespacesAndNewlines), $0) : true
            }else{
                return enabledAutomaticFiltering ? $0.text.localizedStandardContains(text) && text.count > 2 && ($0.token != nil ? true : text.count != $0.text.count) : true
            }
        }
    }
    
    @_documentation(visibility: internal)
    public var body: some View {
        HStack(spacing: 5){
            if let iconView{
                iconView
            }else{
                Image(systemName: "magnifyingglass")
            }
            if #available(macOS 12.0, *) {
                SearchFieldView(
                    text: $text,
                    searchBeginEditingAction: searchBeginEditingAction,
                    searchEndEditingAction: searchEndEditingAction,
                    prompt: prompt,
                    filteredSuggestions: filteredSuggestions,
                    style: style,
                    searchChangeAction: searchChangeAction,
                    clearButtonDisplayMode: clearButtonDisplayMode,
                    clearButtonAction: clearButtonAction,
                    isUsingCustomFocus: isUsingCustomFocus,
                    isFocused: isFocused
                )
            } else {
                TextField(prompt ?? "Search", text: $text)
                    .textFieldStyle(.plain)
                    .foregroundColor(style.textColor ?? .primary)
                Spacer()
                SearchFieldClearButton(
                    text: $text,
                    style: style,
                    clearButtonAction: clearButtonAction,
                    isVisible: clearButtonDisplayMode != .never || (clearButtonDisplayMode == .always && text != "")
                )
                .onChange(of: text) { newValue in
                    searchChangeAction?(newValue)
                }
            }
        }
        .font(.callout)
        .padding(.horizontal, 7)
        .padding(.vertical, 3 * scale.heightMultiplier)
        .onAppear{
            searchChangeAction?("")
        }
        .if{ content in
            if #available(macOS 26.0, *), material == .glass {
                if style.usesCustomBackground{
                    content.glassEffect(.regular.tint(style.backgroundColor).interactive(), in: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))
                }else{
                    content.glassEffect(.regular.interactive(), in: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))
                }
                
            } else {
                content.background(style.backgroundColor)
            }
        }
        
        .clipShape(RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale))
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale)
                .stroke(LinearGradient(colors: [Color(NSColor.quaternaryLabelColor), Color(NSColor.tertiaryLabelColor)], startPoint: .top, endPoint: .bottom), lineWidth: 0.75)
        )
        .padding(.horizontal, 1)
    }
    
    public init(text: Binding<String>, prompt: String? = nil) {
        self._text = text
        self.prompt = prompt
    }
}
#endif

@_documentation(visibility: internal)
extension View {
    @ViewBuilder func conditionalModifier(@ViewBuilder transform: (Self) -> some View) -> some View {
        transform(self)
    }
}
