import SwiftUI

struct AppUsageStats: View {
  var body: some View {
    VStack(spacing: 24) {
      ForEach(appUsageList) {
        appUsage in AppUsage(
          name: appUsage.name,
          usageFraction: appUsage.usageFraction,
          usageTime: appUsage.usageTime,
          productiveScore: appUsage.productiveScore
        )
      }
    }
  }
}
