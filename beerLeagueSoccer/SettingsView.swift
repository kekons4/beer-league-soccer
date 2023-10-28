//
//  SettingsView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Image(.logo)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                List {
                    Section("Settings"){
                        HStack {
                            Image(systemName: "person")
                            NavigationLink("Profile") {ProfileView(player: rosterDemo[0])}
                        }
                        
                        HStack {
                            Image(systemName: "dollarsign.circle")
                            NavigationLink("Payments") {TeamView(team: demoTeams[0])}
                        }
                        
                        HStack {
                            Image(systemName: "bell")
                            NavigationLink("Notifications") {NotificationsView()}
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
