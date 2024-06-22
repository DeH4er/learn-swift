import SwiftUI

struct AppUsageReport: Identifiable {
  var id = UUID()
  var name: String
  var usageFraction: CGFloat
  var usageTime: String
  var productiveScore: ProductiveScore
}

enum ProductiveScore {
  case productive
  case neutral
  case distracting
}

let productiveScoreLabels = [
  ProductiveScore.productive: "Productive",
  ProductiveScore.neutral: "Neutral",
  ProductiveScore.distracting: "Distracting"
]

let productiveScoreColors = [
  ProductiveScore.productive: Palette.teal400,
  ProductiveScore.neutral: Palette.teal400,
  ProductiveScore.distracting: Palette.rose400
]

let productiveScoreGradients: [ProductiveScore: LinearGradient] = [
  ProductiveScore.productive: Palette.tealGradient,
  ProductiveScore.neutral: Palette.tealGradient,
  ProductiveScore.distracting: Palette.redGradient
]

// create more random app usage data with different names, usageFractions,
// usageTimes, and productiveScores
let appUsageList = [
  AppUsageReport(
    name: "Instagram",
    usageFraction: 1,
    usageTime: "11h 32m",
    productiveScore: .distracting
  ),
  AppUsageReport(
    name: "Twitter",
    usageFraction: 0.8,
    usageTime: "9h 12m",
    productiveScore: .distracting
  ),
  AppUsageReport(
    name: "Facebook",
    usageFraction: 0.6,
    usageTime: "6h 45m",
    productiveScore: .distracting
  ),
  AppUsageReport(
    name: "YouTube",
    usageFraction: 0.4,
    usageTime: "4h 23m",
    productiveScore: .neutral
  ),
  AppUsageReport(
    name: "Reddit",
    usageFraction: 0.2,
    usageTime: "2h 15m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "LinkedIn",
    usageFraction: 0.1,
    usageTime: "1h 5m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "TikTok",
    usageFraction: 0.05,
    usageTime: "32m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "Snapchat",
    usageFraction: 0.01,
    usageTime: "5m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "WhatsApp",
    usageFraction: 0.005,
    usageTime: "2m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "Messenger",
    usageFraction: 0.002,
    usageTime: "1m",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "Pinterest",
    usageFraction: 0.001,
    usageTime: "30s",
    productiveScore: .productive
  ),
  AppUsageReport(
    name: "Twitch",
    usageFraction: 0.0005,
    usageTime: "15s",
    productiveScore: .productive
  )
]
