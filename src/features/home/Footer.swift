import SwiftUI

struct Footer: View {
  @State var isSheetOpen = false

  var body: some View {
    Color(white: 0)
      .frame(height: 64)
      .overlay(
        Button(action: {
          isSheetOpen = true
        }) {
          HStack {
            Image(systemName: "arrowtriangle.forward.fill")
              .foregroundColor(.black)
            Text("Block Now")
              .font(.system(size: 18, weight: .semibold))
              .foregroundColor(.black)
          }
          .padding()
          .frame(maxWidth: .infinity)
        }
        .buttonStyle(MainButtonStyle())
        .sheet(isPresented: $isSheetOpen) {
          BlockSheet(isPresented: $isSheetOpen)
            .presentationDetents([.fraction(0.5)])
        }
      )
  }
}

