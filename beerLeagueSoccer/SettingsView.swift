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
                    HStack {
                        Image(systemName: "person")
                        NavigationLink("Profile") {PlayerView(player: rosterDemo[0])}
                    }
                    
                    HStack {
                        Image(systemName: "dollarsign.circle")
                        NavigationLink("Payments") {TeamView(team: demoTeams[0])}
                    }
                    
//                    NavigationLink(value: "profile") {
//                        SettingsCell()
//                    }
//                    .navigationDestination(for: Player.self) { player in
//                        PlayerView(player: rosterDemo[0])
//                    }

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
