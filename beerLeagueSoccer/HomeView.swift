//
//  ContentView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/2/23.
//

import SwiftUI

struct HomeView: View {
    
    @Environment (\.colorScheme) var colorScheme
        
    var body: some View {
        
        NavigationStack {
            
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
                TeamView(team: demoTeams[0])
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("My Teams")
                    }
                PlayerView(player: rosterDemo[0])
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
            .accentColor(.green)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
