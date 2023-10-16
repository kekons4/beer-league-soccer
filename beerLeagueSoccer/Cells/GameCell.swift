//
//  GameCell.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/11/23.
//

import SwiftUI

struct GameCell: View {
    
    @State var event: Event
    
    var body: some View {
        VStack {
            HStack {
                Text("\(event.homeTeam)")
                    .bold()
            
                Text("vs")
            
                Text("\(event.awayTeam)")
                    .bold()
            }
            .padding([.bottom], 5)
     
            Text("\(event.dateTime)")
                .padding([.bottom], 5) 
            Text("At: \(event.location)")
        }
    }
}

struct GameCell_Previews: PreviewProvider {
    static var previews: some View {
        GameCell(event: upcomingEventsTest[0])
    }
}
