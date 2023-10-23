//
//  TeamCell.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/19/23.
//

import SwiftUI

struct TeamCell: View {
    
    @State var team: Team
    
    var body: some View {
        HStack {
            Text(team.teamName)
            
            VStack {
                Text("W")
                Text("\(team.win)")
            }
            .padding()
            
            VStack {
                Text("L")
                Text("\(team.losses)")
            }
            .padding()
            
            VStack {
                Text("T")
                Text("\(team.ties)")
            }
            .padding()
        }
        .padding([.leading], 30)
    }
}
