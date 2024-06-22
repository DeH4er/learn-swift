import SwiftUI

struct BlockDurationPicker: View {
  @Binding var selectedHour: Int
  @Binding var selectedMinute: Int

  func onDurationChange() {
    if selectedHour == 0 && selectedMinute == 0 {
      withAnimation {
        selectedMinute = 1
      }
    }

    if selectedHour == 23 && selectedMinute == 60 {
      withAnimation {
        selectedMinute = 59
      }
    }
  }

  var body: some View {
    HStack(spacing: 0) {
      BlockHourPicker(selected: $selectedHour)
      BlockMinutePicker(selected: $selectedMinute)
    }
    .onChange(of: selectedHour) { _ in
      onDurationChange()
    }
    .onChange(of: selectedMinute) { _ in
      onDurationChange()
    }
  }
}

struct BlockHourPicker: View {
  @Binding var selected: Int
  let hours = Array(0 ... 23)

  var body: some View {
    Picker("Picker", selection: $selected) {
      ForEach(0 ..< hours.count) { index in
        Text("\(hours[index])")
          .font(.system(size: 22))
      }
    }
    .labelsHidden()
    .pickerStyle(.wheel)
    .overlay(
      Text(selected == 1 ? "hour" : "hours")
        .padding(.leading, 100)
        .frame(width: 164, alignment: .leading)
        .allowsHitTesting(false)
    )
    .clipShape(.rect.offset(x: -16))
    .padding([.trailing], -16)
  }
}

struct BlockMinutePicker: View {
  @Binding var selected: Int
  let minutes = Array(0 ... 60)

  var body: some View {
    Picker("Picker", selection: $selected) {
      ForEach(0 ..< minutes.count) { index in
        Text("\(minutes[index])")
          .font(.system(size: 22))
      }
    }
    .labelsHidden()
    .pickerStyle(.wheel)
    .overlay(
      Text(selected == 1 ? "minute" : "minutes")
        .padding(.leading, 100)
        .frame(width: 164, alignment: .leading)
        .allowsHitTesting(false)
    )
    .clipShape(.rect.offset(x: 16))
    .padding([.leading], -16)
  }
}
