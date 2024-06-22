import SwiftUI

struct QuickStats: View {
  var body: some View {
    VStack {
      Text("3h 14m")
        .font(.system(size: 42))
        .foregroundStyle(Palette.tealGradient)
      Text("SCREEN TIME TODAY")
        .font(.system(size: 12))
        .foregroundStyle(Palette.tealGradient)

      Grid(verticalSpacing: 1) {
        GridRow {
          Text("MOST USED")
            .font(.system(size: 12))
            .foregroundStyle(Palette.tealGradient)
          Text("FOCUS SCORE")
            .font(.system(size: 12))
            .foregroundStyle(Palette.tealGradient)
          Text("PICKUPS")
            .font(.system(size: 12))
            .foregroundStyle(Palette.tealGradient)
        }
        .frame(minWidth: 0, maxWidth: .infinity)

        GridRow {
          HStack {
            ForEach(0 ..< 3) {
              i in
              VStack {
                RoundedRectangle(cornerRadius: 4)
                  .fill(Palette.gray700)
                  .frame(
                    width: 16,
                    height: 16
                  )
                RoundedRectangle(cornerRadius: 4)
                  .fill(i % 2 == 0 ? Palette.teal400 : Palette.red400).frame(
                    width: 4,
                    height: 4
                  )
              }
            }
          }
          .padding([.top], 4)
          Text("73%")
            .font(.system(size: 24, weight: .semibold))
            .foregroundStyle(Palette.tealGradient)
          Text("16")
            .font(.system(size: 24, weight: .semibold))
            .foregroundStyle(Palette.tealGradient)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
      }
      .padding([.top], 16)
    }
  }
}
