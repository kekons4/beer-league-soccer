//
//  PlayerView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct PlayerView: View {
    
    @State var player: Player
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack {
                Image(.logo)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding([.bottom], 30)
                
                Section {
                    Text("\(player.firstName), \(player.lastName)")
                        .bold()
                        .font(.system(size: 35))
                    
                    Text("\(player.gender)")
                        .bold()
                    
                    Text("\(player.dob)")
                        .bold()
                        .padding([.bottom], 40)
                }

                
                VStack(alignment: .center) {
                    Text("Game Stats")
                        .bold()
                        .font(.system(size: 30))
                        .padding([.bottom], 30)
                    
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text("Goals:")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("Assists:")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("Yellow Cards:")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("Blue Cards:")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("Red Cards:")
                                .font(.system(size: 20))
                        }
                        .bold()
                        .padding([.trailing], 40)
                        
                        VStack(alignment: .leading) {
                            Text("\(player.goals)")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("\(player.assists)")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("\(player.yellowCards)")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("\(player.blueCards)")
                                .font(.system(size: 20))
                                .padding([.bottom], 20)
                            Text("\(player.redCards)")
                                .font(.system(size: 20))

                        }
                        .bold()
                    }
                }
                .padding(60)
                .background(CustomColors.lightyellow)
                .border(CustomColors.borderyellow, width: 5)
                .clipShape(.rect(cornerRadius: 10))
                                
                VStack {
                    Text("Emergency Contact")
                        .bold()
                        .font(.system(size: 30))
                        .padding([.top, .bottom], 30)
                    
                    VStack {
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Name:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Phone Number: ")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                            }
                            
                            VStack(alignment: .leading) {
                                Text(player.emergencyContactName)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(player.emergencyContactPhone)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                            }
                        }
                    }
                    .padding([.bottom], 20)
                    
                }
                .padding(20)
                .background(CustomColors.mellogreen)
                .border(CustomColors.bordergreen, width: 5)
                .clipShape(.rect(cornerRadius: 10))
                
                Spacer()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: rosterDemo[0])
    }
}
