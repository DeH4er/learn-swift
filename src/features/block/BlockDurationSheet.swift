import SwiftUI

struct BlockDurationSheet: View {
  @Binding var isPresented: Bool
  @EnvironmentObject var appContext: AppContext
  @State var selectedHour: Int = 0
  @State var selectedMinute: Int = 20

  var body: some View {
    VStack {
      Text("Duration")
        .font(.system(size: 24, weight: .semibold))
        .padding([.bottom], 16)

      Text("Select how long this event should last")
        .font(.system(size: 16))
        .foregroundStyle(.secondary)
        .padding([.bottom], 16)

      Spacer()
      BlockDurationPicker(
        selectedHour: $selectedHour,
        selectedMinute: $selectedMinute
      )
      Spacer()
      HStack(spacing: 16) {
        Button(action: {
          appContext.setAlwaysOn()
          isPresented = false
        }) {
          Text("Always On")
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity)
            .frame(height: 56)
        }
        .buttonStyle(SecondaryButtonStyle())
        Button(action: {
          appContext.setFocusSession(
            hours: selectedHour,
            minutes: selectedMinute
          )
          isPresented = false
        }) {
          Text("Confirm")
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity)
            .frame(height: 56)
        }
        .buttonStyle(MainButtonStyle())
      }
      .padding([.horizontal], 16)
    }
    .padding([.vertical], 16)
    .onAppear {
      selectedHour = appContext.focusSessionHours
      selectedMinute = appContext.focusSessionMinutes
    }
  }
}
