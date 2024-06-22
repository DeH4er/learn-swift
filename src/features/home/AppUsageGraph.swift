import SwiftUI

struct AppUsageGraph: View {
  var report: [[ReportHourFraction]]

  var body: some View {
    VStack {
      ZStack {
        HStack {
          ForEach(0 ..< 24) { _ in
            RoundedRectangle(cornerRadius: 2)
              .fill(Palette.gray800)
              .frame(height: 100)
          }
        }
        .frame(height: 100)

        VStack(spacing: 0) {
          ForEach(0 ..< 4) { i in
            if i != 0 {
              Spacer()
            }

            Line()
              .stroke(
                Palette.gray500,
                style: StrokeStyle(lineWidth: 1, dash: [4])
              )
              .frame(height: 1)

            if i != 3 {
              Spacer()
            }
          }
        }
        .frame(height: 100)

        HStack(alignment: .bottom) {
          ForEach(0 ..< 24) { hour in
            if hour >= report.count {
              RoundedRectangle(cornerRadius: 2)
                .fill(Color.clear)
                .frame(height: 100)
            } else {
              VStack(spacing: 0) {
                ForEach(report[hour]) {
                  reportHourFraction in
                  RoundedRectangle(cornerRadius: 2)
                    .fill(reportHourFraction.isProductive ?
                      Palette.tealGradientVertical :
                      Palette.redGradientVertical)
                    .frame(height: CGFloat(reportHourFraction.fraction * 100))
                }
              }
              .frame(height: 100, alignment: .bottom)
            }
          }
        }
        .frame(height: 100, alignment: .bottom)
      }
      .frame(height: 100)

      HStack {
        ForEach(0 ..< 24) { hour in
          RoundedRectangle(cornerRadius: 2)
            .fill(Color.clear)
            .overlay(
              Group {
                if hour % 6 == 0 {
                  Text("\(hour)")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(Palette.tealGradient)
                    .frame(width: 20, alignment: .top)
                }
              }
            )
        }
      }
    }
  }
}
