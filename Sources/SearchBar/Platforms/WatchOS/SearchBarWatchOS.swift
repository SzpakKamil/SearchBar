//
//  SearchBarWatchOS.swift
//  SearchBar
//
//  Created by KamilSzpak on 11/04/2025.
//

import SwiftUI

#if os(watchOS)
import WatchKit

public struct SearchBar: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var text: String
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
            HStack(spacing: 5){
                ZStack{
                    Button{
                        isKeyboardFocused = true
                    }label: {
                        HStack(spacing: 6){
                            if let iconView{
                                iconView
                            }else{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(style.textColor ?? .primary)
                            }
                            Text(text.isEmpty ? (prompt ?? SearchBarTranslation.prompt.value) : text)
                                .foregroundColor(text.isEmpty ? (style.textColor ?? .secondary).opacity(0.75) : (style.textColor ?? .primary))
                                .lineLimit(1)
                            Spacer()
                        }
                        .font(.callout)
                        .padding(.horizontal, 12 * scale.heightMultiplier)
                        .padding(.vertical, 12 * scale.heightMultiplier)
                        .if{ content in
            #if compiler(>=6.2)
                            if #available(watchOS 26.0, *), material == .glass {
                                if style.usesCustomBackground{
                                    content.glassEffect(.regular.tint(style.backgroundColor).interactive(), in: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))
                                }else{
                                    content.glassEffect(.regular.interactive(), in: .rect(cornerRadius: style.cornerRadius * scale.cornerScale))
                                }
                                
                            } else {
                                content.background(style.backgroundColor)
                                    .clipShape(RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale))
                            }
            #else
                            content.background(style.backgroundColor)
                                .clipShape(RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale))
            #endif
                        }
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: style.cornerRadius * scale.cornerScale)
                                .stroke( LinearGradient(colors: style.borderColor == nil ? [Color.primary.opacity(0.3), Color.primary.opacity(0.6)] : [style.borderColor ?? .clear], startPoint: .top, endPoint: .bottom), lineWidth: material == .glass ? 0 : 0.75)
                        )
                        .padding(.horizontal, 1)
                    }
                    .buttonStyle(.plain)
                    .onChange(of: text) { newValue in
                        searchChangeAction?(newValue)
                    }
                }
            }
            .onAppear{
                isKeyboardFocused = isFocused.wrappedValue
                searchChangeAction?("")
            }
            .onChange(of: isFocused.wrappedValue){ newValue in
                if isUsingCustomFocus {
                    isKeyboardFocused = newValue
                }
            }
            .onChange(of: isKeyboardFocused) { newValue in
                if newValue{
                    WKExtension.shared().visibleInterfaceController?.presentTextInputController(
                        withSuggestions: [],
                        allowedInputMode: .plain
                    ) { result in
                        guard let result = result as? [String], let first = result.first else {
                            return
                        }
                        self.text = first
                        isKeyboardFocused = false
                    }
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
#endif
