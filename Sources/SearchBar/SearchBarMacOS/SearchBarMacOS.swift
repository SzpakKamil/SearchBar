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
        .padding(.vertical, 3)
        .onAppear{
            searchChangeAction?("")
        }
        .background(style.backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: style.cornerRadius))
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: style.cornerRadius)
                .stroke(LinearGradient(colors: [Color(NSColor.quaternaryLabelColor), Color(NSColor.tertiaryLabelColor)], startPoint: .top, endPoint: .bottom), lineWidth: 0.75)
        )
        .padding(.horizontal, 1)
    }
    
    public init(text: Binding<String>, prompt: String? = nil) {
        self._text = text
        self.prompt = prompt
    }
}

@available(macOS 12.0, *)
struct SearchFieldView: View{
    @Binding var text: String
    var searchBeginEditingAction: (() -> Void)? = nil
    var searchEndEditingAction: (() -> Void)? = nil
    var prompt: String?
    var filteredSuggestions: [SearchBarSuggestion]
    var style: SearchBarStyle
    var searchChangeAction: ((String) -> Void)?
    var clearButtonDisplayMode = SearchBarClearButtonDisplayMode.whileEditing
    var clearButtonAction: (() -> Void)? = nil
    var isUsingCustomFocus = false
    var isFocused: Binding<Bool>
    @FocusState var isEditing: Bool
    
    var shouldShowClearButton: Bool {
        switch clearButtonDisplayMode {
        case .never:
            return false
        case .always:
            return text != ""
        case .unlessEditing:
            return text != "" && !isEditing
        case .whileEditing:
            return isEditing
        default:
            return false
        }
    }
    
    private var supportsTextSuggestions: Bool {
        guard #available(macOS 15.0, *) else {
            return true
        }
        return false
    }
    
    var body: some View{
        Group{
            if #available(macOS 14.0, *) {
                ZStack{
                    TextField(prompt ?? "Search", text: $text)
                        .textFieldStyle(.plain)
                        .focused($isEditing)
                        .foregroundStyle(style.textColor ?? .primary)
                        .onChange(of: isEditing) { _, newValue in
                            if let searchBeginEditingAction, newValue{
                                searchBeginEditingAction()
                            }else if let searchEndEditingAction, !newValue{
                                searchEndEditingAction()
                            }
                        }
                        .onChange(of: isEditing){ _, newValue in
                            isFocused.wrappedValue = newValue
                        }
                        .onChange(of: text){ _, newValue in
                            searchChangeAction?(newValue)
                        }
                        .conditionalModifier{ content in
                            if #available(macOS 15.0, *) {
                                content
                                    .textInputSuggestions{
                                        ForEach(filteredSuggestions){ suggestion in
                                            Button(suggestion.text, systemImage: suggestion.systemName ?? "magnifyingglass") {
                                                text = suggestion.text
                                            }
                                        }
                                    }
                                    .animation(nil, value: filteredSuggestions)
                            } else {
                                content
                            }
                        }
                        .onKeyPress(.return, phases: .down) { press in
                            if !filteredSuggestions.isEmpty{
                                isEditing = false
                            }

                            return .handled
                        }
                }
            } else {
                TextField(prompt ?? "Search", text: $text)
                    .textFieldStyle(.plain)
                    .focused($isEditing)
                    .foregroundStyle(style.textColor ?? .primary)
                    .onChange(of: isEditing){ newValue in
                        isFocused.wrappedValue = newValue
                    }
                    .onChange(of: isEditing) { newValue in
                        if let searchBeginEditingAction, newValue{
                            searchBeginEditingAction()
                        }else if let searchEndEditingAction, !newValue{
                            searchEndEditingAction()
                        }
                    }
                    .onChange(of: text){ newValue in
                        searchChangeAction?(newValue)
                    }
            }
            Spacer()
            SearchFieldClearButton(
                text: $text,
                style: style,
                clearButtonAction: clearButtonAction,
                isVisible: shouldShowClearButton
            )
        }
        .onAppear{
            if isUsingCustomFocus{
                isEditing = isFocused.wrappedValue
            }
        }
    }
}

struct SearchFieldClearButton: View{
    @Binding var text: String
    var style: SearchBarStyle
    var clearButtonAction: (() -> Void)? = nil
    var isVisible: Bool
    var body: some View{
        Button {
            text = ""
            if let clearButtonAction{
                clearButtonAction()
            }
        }label: {
            Image(systemName: "xmark.circle.fill")
                .conditionalModifier{ content in
                    if #available(macOS 12.0, *) {
                        content
                            .foregroundStyle(style.tintColor ?? .primary)
                    } else {
                        content
                            .foregroundColor(style.tintColor ?? .primary)
                    }
                }
        }
        .buttonStyle(.borderless)
        .labelsHidden()
        .scaleEffect(isVisible ? 1 : 0)
        .opacity(isVisible ? 1 : 0)
        .animation(.smooth(duration: 0.2), value: isVisible)
        .disabled(text.isEmpty)
    }
}
#endif

