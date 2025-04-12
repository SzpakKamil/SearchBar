//
//  SearchBar.swift
//  SymbolPicker
//
//  Created by KamilSzpak on 11/04/2025.
//

import SwiftUI

#if !os(macOS)
public struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    let prompt: String
    let useRounded: Bool
    var onSearchButtonClicked: () -> Void

    public func makeUIView(context: Context) -> UISearchBar {
        if useRounded{
            let searchBar = CustomSearchStyle()
            searchBar.placeholder = prompt
            searchBar.delegate = context.coordinator
            return searchBar
        }else{
            let searchBar = UISearchBar()
            searchBar.placeholder = prompt
            searchBar.delegate = context.coordinator
            return searchBar
        }


    }

    public func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
        uiView.searchBarStyle = .minimal
    }
    

    public func makeCoordinator() -> Coordinator { Coordinator(self) }
    
    public class Coordinator: NSObject, UISearchBarDelegate {
        var parent: SearchBar

        init(_ searchBar: SearchBar) {
            self.parent = searchBar
        }

        public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            parent.text = searchText
        }
        
        public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            searchBar.setShowsCancelButton(true, animated: true)
        }
        public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
            searchBar.setShowsCancelButton(false, animated: true)
        }

        public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            parent.onSearchButtonClicked()
            searchBar.resignFirstResponder()
        }
        
        public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }
    }
    
    public class CustomSearchStyle: UISearchBar {
        private var didObserveSubviews = false
        private let desiredCornerRadius = 22.0
        private var observedLayers = NSHashTable<CALayer>.weakObjects()
        
        public override func willMove(toWindow newWindow: UIWindow?) {
            super.willMove(toWindow: newWindow)
         
            // Adding to window
            guard !didObserveSubviews else { return }
            didObserveSubviews = true
            observeSubviews(self)
        }
            
        func observeSubviews(_ view: UIView) {
            if !observedLayers.contains(view.layer) {
                view.layer.addObserver(self, forKeyPath: "cornerRadius", options: [.new], context: nil)
                observedLayers.add(view.layer)
            }
            
            view.subviews.forEach { observeSubviews($0) }
        }
            
        public override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
            guard keyPath == "cornerRadius" else {
                super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
                return
            }
            
            guard let layer = object as? CALayer else { return }
            guard layer.cornerRadius != desiredCornerRadius else { return }
            layer.cornerRadius = desiredCornerRadius
        }
    }
    
    #if !os(visionOS)
    public init(text: Binding<String>, prompt: String = "Search", onSearchButtonClicked:   @escaping () -> Void = {}) {
        self._text = text
        self.prompt = prompt
        self.onSearchButtonClicked = onSearchButtonClicked
        self.useRounded = false
    }
    #else
    public init(text: Binding<String>, prompt: String = "Search", useRounded: Bool = false,    onSearchButtonClicked: @escaping () -> Void = {}) {
        self._text = text
        self.prompt = prompt
        self.onSearchButtonClicked = onSearchButtonClicked
        self.useRounded = useRounded
    }
    #endif
}
#else
public struct SearchBar: NSViewRepresentable {
    @Binding public var text: String
    public var onClear: () -> Void

    public let prompt: String

    public init(text: Binding<String>, prompt: String = "Search", onClear:   @escaping () -> Void = {}) {
        self._text = text
        self.prompt = prompt
        self.onClear = onClear
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(binding: $text, onClear: onClear)
    }

    public func makeNSView(context: Context) -> NSSearchField {
        let textField = NSSearchField(string: text)
        textField.placeholderString = prompt
        textField.delegate = context.coordinator
        textField.bezelStyle = .roundedBezel
        textField.focusRingType = .none
        return textField
    }

    public func updateNSView(_ nsView: NSSearchField, context: Context) {
        nsView.stringValue = text
    }

    public class Coordinator: NSObject, NSSearchFieldDelegate {
        let binding: Binding<String>
        let onClear: () -> Void

        public init(binding: Binding<String>, onClear: @escaping () -> Void) {
            self.binding = binding
            self.onClear = onClear
            super.init()
        }

        public func controlTextDidChange(_ obj: Notification) {
            guard let field = obj.object as? NSTextField else { return }
            binding.wrappedValue = field.stringValue

            if field.stringValue.isEmpty {
                onClear()
            }
        }
    }
}
#endif
