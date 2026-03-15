//
//  SearchBartvOS.swift
//  SearchBar
//
//  Created by KamilSzpak on 11/04/2025.
//

import SwiftUI

#if os(tvOS)
public struct SearchBar: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var text: String
    @FocusState var isFocusedState: Bool
    @State private var isKeyboardFocused: Bool = false
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
    var lookToDictate = false
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
        ZStack{
            KeyboardTrigger(text: $text, isVisible: $isKeyboardFocused)
                .id(isKeyboardFocused)
                .frame(width: 1, height: 1)
            HStack(spacing: 5){
                Button {
                    isKeyboardFocused = true
                } label: {
                    HStack(spacing: 6){
                        if let iconView{
                            iconView
                        }else{
                            Image(systemName: "magnifyingglass")
                        }
                        Text(text.isEmpty ? (prompt ?? SearchBarTranslation.prompt.value) : text)
                            .opacity(text.isEmpty ? 0.75 : 1)
                            .lineLimit(1)
                        Spacer()
                    }
                    .font(.callout)
                    .padding(.horizontal, 12 * scale.heightMultiplier)
                    .padding(.vertical, 12 * scale.heightMultiplier)
                }
                .focused($isFocusedState)
                .buttonStyle(SearchBarTVOSButtonStyle(material: material, style: style, scale: scale, isFocused: isFocusedState))
                .onChange(of: text) { newValue in
                    searchChangeAction?(newValue)
                }
            }
            .onAppear{
                searchChangeAction?("")
            }
            .onChange(of: isFocused.wrappedValue){ newValue in
                if isUsingCustomFocus {
                    isKeyboardFocused = newValue
                }
            }
            .onChange(of: isKeyboardFocused) { newValue in
                if isUsingCustomFocus {
                    isFocused.wrappedValue = newValue
                }
                if newValue {
                    searchBeginEditingAction?()
                } else {
                    searchEndEditingAction?()
                }
            }

            
        }
    }

    public init(text: Binding<String>, prompt: String? = nil) {
        self._text = text
        self.prompt = prompt
    }
}

fileprivate struct SearchBarTVOSButtonStyle: ButtonStyle {
    @Environment(\.colorScheme) var colorScheme
    let material: SearchBarMaterial
    let style: SearchBarStyle
    let scale: SearchBarScale
    let isFocused: Bool
    
    func getBackgroundColor(isPressed: Bool) -> Color{
        if isFocused{
            Color.white
        }else if isPressed{
            Color.white.opacity(0.9)
        }else{
            if #available(tvOS 26.0, *), !style.usesCustomBackground, material == .glass{
                if colorScheme == .light{
                    Color.white.opacity(0.65)
                }else{
                    .clear
                }

            }else{
                style.backgroundColor
            }
        }
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(isFocused ?  .black : style.textColor ?? .primary)
            .if { content in
                #if compiler(>=6.2)
                if #available(tvOS 26.0, *), material == .glass {
                    content
                        .glassEffect(style.usesCustomBackground ? .regular.tint(getBackgroundColor(isPressed: configuration.isPressed)).interactive() : .regular.tint(getBackgroundColor(isPressed: configuration.isPressed)).interactive(), in: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))
                } else if #available(tvOS 26.0, *){
                    content
                        .background(
                            RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale).fill(getBackgroundColor(isPressed: configuration.isPressed))
                        )
                        .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale)
                                    .stroke( LinearGradient(colors: style.borderColor == nil ? [Color(UIColor.quaternaryLabel), Color(UIColor.tertiaryLabel)] : [style.borderColor ?? .clear], startPoint: .top, endPoint: .bottom), lineWidth: material == .glass ? 0 : 0.75)
                        )
                }else {
                    content.background(
                        RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale).fill(getBackgroundColor(isPressed: configuration.isPressed))
                    )
                }
                #else
                content.background(
                    RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale).fill(getBackgroundColor(isPressed: configuration.isPressed))
                )
#endif
            }
            .padding(.horizontal, 1)
            .scaleEffect(isFocused ? 1.05 : 1)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.smooth(duration: 0.2), value: isFocused)
            .animation(.smooth(duration: 0.2), value: configuration.isPressed)
            .shadow(color: .black.opacity(isFocused ? 0.35 : 0), radius: 20, y: 10)
    }
}


#endif
