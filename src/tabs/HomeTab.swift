import SwiftUI

struct HomeTab: View {
  @State private var isModalOpen = false

  var body: some View {
    ZStack {
      ScrollView(showsIndicators: false) {
        VStack(spacing: 32) {
          Hero(isModalOpen: $isModalOpen)
            .padding([.top], 16)
            .padding([.bottom], -32)
          QuickStats()
          AppUsageGraph(report: report)
          AppUsageStats()
        }
        .padding([.vertical], 68)
      }
      .frame(maxHeight: .infinity)
      .padding([.horizontal], 16)

      VStack {
        Header()
        Spacer()
        Footer()
      }
      .frame(maxHeight: .infinity)
      .edgesIgnoringSafeArea(.top)
      .padding([.horizontal], 16)

      if isModalOpen {
        AchievementModal(isModalOpen: $isModalOpen)
      }
    }
    .frame(maxHeight: .infinity)
    .animation(.bouncy, value: isModalOpen)
  }
}

