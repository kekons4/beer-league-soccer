//
//  TeamView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct TeamView: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    @State var team: Team
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                
                Image(.logo)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding([.bottom], 30)
                
                Text(team.teamName)
                    .bold()
                    .font(.system(size: 40))
                    .padding([.bottom], 50)
            
                
                VStack {
                    Text("Details")
                        .bold()
                        .font(.system(size: 35))
                        .padding([.leading, .trailing, .top], 30)
                    
                    Section {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("League:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Season:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Start:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Sport:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Skill:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Gender:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Age:")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("Games:")
                                    .bold()
                                    .font(.system(size: 20))
                            }
                            
                            VStack(alignment: .leading) {
                                Text(team.league)
                                    .font(.system(size: 20))
                                    .padding([.bottom],10)
                                Text(team.season)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(team.startData)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(team.season)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(team.skill)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(team.gender)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text(team.age)
                                    .font(.system(size: 20))
                                    .padding([.bottom], 10)
                                Text("\(team.games)")
                                    .font(.system(size: 20))
                            }
                            .padding([.leading], 30)
                        }
                    }
                    .padding([.bottom, .top, .leading, .trailing], 30)
                }
                .foregroundColor(colorScheme == .dark ? CustomColors.borderyellow : .black)
                .background(CustomColors.lightyellow)
                .border(CustomColors.borderyellow, width: 5)
                .clipShape(.rect(cornerRadius: 10.0))
                .padding([.bottom], 30)
                
                
                VStack {
                    Text("Season Stats")
                        .bold()
                        .font(.system(size: 35))
                        .padding([.top], 30)
                    
                    Section {
                        HStack {
                            VStack {
                                Text("W")
                                    .bold()
                                Text("\(team.win)")
                            }
                            .padding([.leading], -10)
                            
                            VStack {
                                Text("L")
                                    .bold()
                                Text("\(team.losses)")
                            }
                            .padding([.leading], 5)
                            
                            VStack {
                                Text("T")
                                    .bold()
                                Text("\(team.ties)")
                            }
                            .padding([.leading], 5)
                            
                            VStack {
                                Text("+Pts")
                                    .bold()
                                Text("\(team.plusPts)")
                            }
                            
                            VStack {
                                Text("Pts")
                                    .bold()
                                Text("\(team.points)")
                            }
                            
                            VStack {
                                Text("GF")
                                    .bold()
                                Text("\(team.goalsFor)")
                            }
                            
                            VStack {
                                Text("GA")
                                    .bold()
                                Text("\(team.goalsAgainst)")
                            }
                            
                            VStack {
                                Text("GD")
                                    .bold()
                                Text("\(team.goalDifferential)")
                            }
                            
                            VStack {
                                Text("GP")
                                    .bold()
                                Text("\(team.gamesPlayed)")
                            }
                        }
                        .padding()
                    }
                    .padding()
                }
                .foregroundColor(colorScheme == .dark ? CustomColors.bordergreen : .black)
                .background(CustomColors.mellogreen)
                .border(CustomColors.bordergreen, width: 5)
                .clipShape(.rect(cornerRadius: 10))
                .padding([.bottom], 30)
                
                VStack {
                    Text("Team Roster")
                        .bold()
                        .font(.system(size: 35))
                        .padding()
                    
                    Section {
                        ForEach(rosterDemo, id: \.id) { player in
                            PlayerCell(player: player)
                        }
                    }
                }
                .foregroundColor(colorScheme == .dark ? CustomColors.borderyellow : .black)
                .background(CustomColors.lightyellow)
                .border(CustomColors.borderyellow, width: 5)
                .clipShape(.rect(cornerRadius: 10))
                
                Spacer()
            }
        }
    }
}

struct CustomColors {
    static let lightgray = Color("lightgray")
    static let lightyellow = Color("lightyellow")
    static let mellogreen = Color("mellogreen")
    static let bordergreen = Color("bordergreen")
    static let borderyellow = Color("borderyellow")
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(team: demoTeams[0])
    }
}
