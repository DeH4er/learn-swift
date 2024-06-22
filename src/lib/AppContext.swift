import SwiftUI

class AppContext: ObservableObject {
  @Published var focusSessionHours = 0
  @Published var focusSessionMinutes = 20
  @Published var isAlwaysOn = false

  func setFocusSession(hours: Int, minutes: Int) {
    var totalHours = hours
    var totalMinutes = minutes

    if minutes == 60 {
      totalHours += 1
      totalMinutes = 0
    }

    isAlwaysOn = false
    focusSessionHours = totalHours
    focusSessionMinutes = totalMinutes
  }

  func setAlwaysOn() {
    isAlwaysOn = true
    focusSessionHours = 0
    focusSessionMinutes = 20
  }
}
