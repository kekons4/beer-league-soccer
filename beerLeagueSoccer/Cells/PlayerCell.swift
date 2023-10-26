//
//  PlayerCell.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/23/23.
//

import SwiftUI

struct PlayerCell: View {
    
    @State var player: Player
    
    var body: some View {
        HStack {
            Text("\(player.firstName), \(player.lastName)")
                .bold()
                .frame(width: 125, alignment: .leading)
            
            HStack {
                VStack {
                    Text("Goals")
                        .bold()
                    Text("\(player.goals)")
                }
                .frame(width: 60)
                
                VStack {
                    Text("Assists")
                        .bold()
                    Text("\(player.assists)")
                }
                .frame(width: 60)
            }
        }
        .padding(30)
    }
}

struct PlayerCell_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCell(player: rosterDemo[1])
    }
}
