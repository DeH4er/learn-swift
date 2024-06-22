import SwiftUI

struct AchievementModal: View {
  @Binding var isModalOpen: Bool

  var body: some View {
    Color.white.opacity(0)
      .background(.regularMaterial)
      .edgesIgnoringSafeArea(.all)
      .onTapGesture {
        withAnimation {
          isModalOpen = false
        }
      }
      .opacity(isModalOpen ? 1 : 0)

    RoundedRectangle(cornerRadius: 20)
      .fill(Color.black)
      .frame(height: 400)
      .zIndex(1)
      .overlay {
        VStack(spacing: 4) {
          Text("DRIVEN GEM")
            .font(.system(size: 32, weight: .semibold))
            .tracking(-1.3)
          Text(
            "Reach this MileStone when you spend a total of 10 hours in an Opal session."
          )
          .font(.system(size: 12))
          .foregroundStyle(.secondary)
          .multilineTextAlignment(.center)
          Image(systemName: "hexagon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 135, height: 135)
            .foregroundStyle(Palette.tealGradient)
            .onTapGesture {
              isModalOpen = true
            }
            .padding([.top, .bottom], 64)
          Text("See more MileStones in your profile")
            .font(.system(size: 16))
            .foregroundStyle(.secondary)
        }
        .padding([.trailing, .leading], 36)
      }
      .padding([.trailing, .leading], 24)
      .scaleEffect(isModalOpen ? 1 : 0.8)
      .opacity(isModalOpen ? 1 : 0)
  }
}
