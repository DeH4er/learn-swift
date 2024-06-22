import SwiftUI

struct BlockSheet: View {
  @Binding var isPresented: Bool
  @EnvironmentObject var appContext: AppContext
  @State var isDurationSheetPresented = false
  @State var selectedFlavor = 0

  func formatDuration() -> String {
    if appContext.isAlwaysOn {
      return "Always On"
    }

    let minutes = appContext.focusSessionMinutes
    let hours = appContext.focusSessionHours
    let formattedMinutes = minutes == 1 ? "\(minutes) minute" :
      "\(minutes) minutes"
    let formattedHours = hours == 1 ? "\(hours) hour" : "\(hours) hours"

    if hours == 0 {
      return formattedMinutes
    }

    if minutes == 0 {
      return formattedHours
    }

    return "\(formattedHours) \(formattedMinutes)"
  }

  var body: some View {
    VStack(alignment: .leading) {
      Text("Focus Session")
        .font(.system(size: 24, weight: .semibold))
        .padding([.bottom], 16)

      BlockListButton(
        action: {
          isDurationSheetPresented = true
        },
        iconName: "timer",
        buttonText: "Duration",
        selectionText: formatDuration()
      )
      .sheet(isPresented: $isDurationSheetPresented) {
        BlockDurationSheet(isPresented: $isDurationSheetPresented)
          .presentationDetents([.height(440)])
      }
      BlockListButton(
        action: {},
        iconName: "shield",
        buttonText: "Apps Blocked",
        selectionText: "App Group"
      )
      BlockListButton(
        action: {},
        iconName: "network.badge.shield.half.filled",
        buttonText: "Difficulty",
        selectionText: "Normal"
      )
      Spacer()
      Button(action: {
        isPresented = false
      }) {
        Text("Start Session")
          .font(.system(size: 16, weight: .semibold))
          .frame(maxWidth: .infinity)
          .frame(height: 56)
      }
      .buttonStyle(MainButtonStyle())
      .frame(maxWidth: .infinity)
    }
    .frame(maxWidth: .infinity, alignment: .topLeading)
    .padding()
  }
}
