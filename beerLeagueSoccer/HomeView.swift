//
//  ContentView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/2/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            AsyncImage(url: URL(string: "https://resoluteac.com/wp-content/uploads/2021/03/logo.png"))
            TabView {
                DashboardView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                TeamView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("My Teams")
                    }
                PlayerView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Player")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
