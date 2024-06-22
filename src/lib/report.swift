import Foundation

struct ReportHourFraction: Identifiable {
  var id = UUID()
  var isProductive: Bool
  var fraction: Float
}

let report: [[ReportHourFraction]] = [
  [
    ReportHourFraction(isProductive: true, fraction: 0.3),
    ReportHourFraction(isProductive: false, fraction: 0.5),
    ReportHourFraction(isProductive: true, fraction: 0.2)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.3),
    ReportHourFraction(isProductive: false, fraction: 0.7)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.7),
    ReportHourFraction(isProductive: false, fraction: 0.3)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.6),
    ReportHourFraction(isProductive: false, fraction: 0.4)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.4),
    ReportHourFraction(isProductive: false, fraction: 0.6)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.8),
    ReportHourFraction(isProductive: false, fraction: 0.2)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.2),
    ReportHourFraction(isProductive: false, fraction: 0.8)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.9),
    ReportHourFraction(isProductive: false, fraction: 0.1)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.1),
    ReportHourFraction(isProductive: false, fraction: 0.9)
  ],
  [
    ReportHourFraction(isProductive: false, fraction: 0.3),
    ReportHourFraction(isProductive: true, fraction: 0.7)
  ],
  [
    ReportHourFraction(isProductive: false, fraction: 0.7),
    ReportHourFraction(isProductive: true, fraction: 0.3)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.5),
    ReportHourFraction(isProductive: false, fraction: 0.5)
  ],
  [
    ReportHourFraction(isProductive: true, fraction: 0.4)
  ]
]
