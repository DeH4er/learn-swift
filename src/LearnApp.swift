import SwiftUI

@main
struct LearnApp: App {
  var body: some Scene {
    WindowGroup {
      MainView()
    }
  }
}

struct MainView: View {
  var body: some View {
    TabView {
      Group {
        HomeTab().tabItem {
          Label("Home", systemImage: "house")
        }
        BlocksTab().tabItem {
          Label("Blocks", systemImage: "folder")
        }
        ProfileTab().tabItem {
          Label(
            "Profile",
            systemImage: "person.crop.circle"
          )
        }
      }
      .toolbarBackground(.black, for: .tabBar)
    }
    .accentColor(.white)
    .preferredColorScheme(.dark)
    .environmentObject(AppContext())
  }
}
