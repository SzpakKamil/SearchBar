import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
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
            if #available(iOS 17.0, macOS 14.0, *) {
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
                    #if os(macOS)
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
                    #endif
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
