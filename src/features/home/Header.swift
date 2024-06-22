import SwiftUI

struct Header: View {
  var body: some View {
    Color.black.opacity(0.8)
      .frame(height: 96)
      .overlay(
        HStack {
          Text("Teal")
            .font(.system(size: 28, weight: .semibold))
          Spacer()
          Image(systemName: "gift")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(Palette.tealGradient)
            .frame(height: 20)
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .padding([.bottom], 8)
      )
  }
}

