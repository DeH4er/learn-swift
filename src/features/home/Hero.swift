import SwiftUI

struct Hero: View {
  @Binding var isModalOpen: Bool

  var body: some View {
    ZStack {
      Ellipse()
        .fill(
          LinearGradient(
            gradient: Gradient(colors: [
              Palette.emerald300,
              Palette.cyan500
            ]),
            startPoint: .leading,
            endPoint: .trailing
          )
        )
        .frame(width: 300, height: 300)
        .mask(
          RadialGradient(
            gradient: Gradient(colors: [
              Color.white.opacity(0.9),
              Color.white.opacity(0)
            ]),
            center: .center,
            startRadius: 0,
            endRadius: 150
          )
        )
      Image(systemName: "hexagon")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 150)
        .foregroundColor(Palette.gray950)
        .onTapGesture {
          withAnimation {
            isModalOpen = true
          }
        }
    }
  }
}
