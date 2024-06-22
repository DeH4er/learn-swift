import SwiftUI

struct AppUsage: View {
  var name: String
  var usageFraction: CGFloat
  var usageTime: String
  var productiveScore: ProductiveScore

  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        RoundedRectangle(cornerRadius: 2)
          .fill(Palette.gray700)
          .frame(width: 16, height: 16)
        Text(name).font(.system(size: 18))
        Spacer()
        Text(usageTime)
          .font(.system(size: 18))
          .foregroundStyle(productiveScoreGradients[productiveScore]!)
      }
      GeometryReader { geometry in
        RoundedRectangle(cornerRadius: 8)
          .fill(productiveScoreGradients[productiveScore]!)
          .frame(width: geometry.size.width * usageFraction, height: 8)
      }
      HStack(spacing: 4) {
        Text(productiveScoreLabels[productiveScore]!)
          .font(.system(size: 12))
          .foregroundStyle(productiveScoreGradients[productiveScore]!)
        Image(systemName: "chevron.right")
          .resizable()
          .foregroundStyle(productiveScoreGradients[productiveScore]!)
          .aspectRatio(contentMode: .fit)
          .frame(width: 8, height: 8)
      }
      .padding([.vertical], 4)
      .padding([.horizontal], 6)
      .background(productiveScoreGradients[productiveScore]!.opacity(0.15))
      .clipShape(RoundedRectangle(cornerRadius: 4))
    }
  }
}
