//
//  KeyboardTrigger.swift
//  SheetKit
//
//  Created by Kamil Szpak on 18/07/2025.
//

import SwiftUI
#if os(tvOS)
internal import UIKit

@_documentation(visibility: internal)
struct KeyboardTrigger<Value>: UIViewRepresentable {
    @Binding var value: Value
    @Binding var isKeyboardVisible: Bool
    let keyboardType: UIKeyboardType
    let formatter: (Value) -> String
    let parser: (String) -> Value?

    // MARK: - Subclass to Trap Escape Key
    // Standard UITextField does not map 'Esc' to resignFirstResponder automatically.
    // We must intercept the key command explicitly.
    private class EscapableTextField: UITextField {
        override var keyCommands: [UIKeyCommand]? {
            return [
                UIKeyCommand(input: UIKeyCommand.inputEscape, modifierFlags: [], action: #selector(handleEscape))
            ]
        }

        @objc private func handleEscape() {
            self.resignFirstResponder()
        }
    }

    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: KeyboardTrigger

        init(_ parent: KeyboardTrigger) {
            self.parent = parent
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            if let text = textField.text, let parsed = parent.parser(text) {
                // Async to avoid "Modifying state during view update"
                DispatchQueue.main.async {
                    self.parent.value = parsed
                }
            }
        }

        func textFieldDidBeginEditing(_ textField: UITextField) {
            DispatchQueue.main.async {
                self.parent.isKeyboardVisible = true
            }
        }

        func textFieldDidEndEditing(_ textField: UITextField) {
            DispatchQueue.main.async {
                self.parent.isKeyboardVisible = false
            }
        }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> UITextField {
        // Use the subclass that handles Escape
        let textField = EscapableTextField()
        textField.delegate = context.coordinator
        textField.keyboardType = keyboardType
        textField.alpha = 0.0
        textField.isUserInteractionEnabled = true
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        // Only update text if the user isn't currently typing
        if !uiView.isFirstResponder {
            uiView.text = formatter(value)
        }

        DispatchQueue.main.async {
            if self.isKeyboardVisible {
                if !uiView.isFirstResponder {
                    uiView.becomeFirstResponder()
                }
            } else {
                if uiView.isFirstResponder {
                    uiView.resignFirstResponder()
                }
            }
        }
    }
}

extension KeyboardTrigger where Value == String {
    init(text: Binding<String>, isVisible: Binding<Bool>) {
        self._value = text
        self._isKeyboardVisible = isVisible
        self.keyboardType = .default
        self.formatter = { $0 }
        self.parser = { $0 }
    }
}
#endif
