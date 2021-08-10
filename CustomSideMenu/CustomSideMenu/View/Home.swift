//
//  Home.swift
//  CustomSideMenu
//
//  Created by recherst on 2021/8/10.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    // Hiding Tab Bar
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }

    var body: some View {
        // Tab view with tabs
        TabView(selection: $selectedTab) {
            HomePage()
                .tag("Home")

            History()
                .tag("History")

            Settings()
                .tag("Setting")

            Help()
                .tag("Help")

            Notifications()
                .tag("Notifications")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// All sub views
struct HomePage: View {
    var body: some View {
        NavigationView {
            Text("Home")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Home")
        }
    }
}


struct History: View {
    var body: some View {
        NavigationView {
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}


struct Settings: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}


struct Help: View {
    var body: some View {
        NavigationView {
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}

struct Notifications: View {
    var body: some View {
        NavigationView {
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
