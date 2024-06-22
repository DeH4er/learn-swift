import SwiftUI

struct BlockListButton: View {
  var action: () -> Void
  var iconName: String
  var buttonText: String
  var selectionText: String

  var body: some View {
    Button(action: action) {
      HStack {
        Image(systemName: iconName)
          .foregroundStyle(.secondary)
        Text(buttonText)
        Spacer()
        Text(selectionText)
          .foregroundStyle(.secondary)
        Image(systemName: "chevron.right")
          .foregroundStyle(.secondary)
      }
      .frame(height: 48)
      .padding([.horizontal], 16)
    }
    .buttonStyle(ListButtonStyle())
  }
}

