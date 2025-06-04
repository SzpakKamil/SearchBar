import SwiftUI

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
                    if #available(iOS 15.0, macOS 12.0, *) {
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
