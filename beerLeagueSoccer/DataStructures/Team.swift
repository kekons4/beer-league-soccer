//
//  Team.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/13/23.
//

import Foundation

struct Team {
    var id: Int
    var teamName: String
    var league: String
    var season: String
    var startData: String
    var sport: String
    var skill: String
    var gender: String
    var age: String
    var games: Int
    var paid: Double
    var discount: Double
    var price: Double
    var due: Double
    var roster: [Player]
    var upcomingEvents: [Event]
    var pastEvents: [Event]
    var win: Int
    var losses: Int
    var ties: Int
    var plusPts: Int
    var points: Int
    var goalsFor: Int
    var goalsAgainst: Int
    var goalDifferential: Int
    var gamesPlayed: Int
}

var demoTeams = [
    Team(id: 0, teamName: "Weekend Warriors", league: "Fall D Co-ED", season: "Fall 2023", startData: "October 5, 2023", sport: "Soccer,Indoor", skill: "D", gender: "co-ed", age: "Under 30", games: 8, paid: 0.0, discount: 0.0, price: 0.0, due: 0.0, roster: [], upcomingEvents: [], pastEvents: [], win: 5, losses: 1, ties: 1, plusPts: 8, points: 1, goalsFor: 10, goalsAgainst: 1, goalDifferential: 9, gamesPlayed: 7)
    ,
    Team(id: 1, teamName: "Red Team", league: "Fall D Co-ED", season: "Fall 2023", startData: "October 5, 2023", sport: "Soccer,Indoor", skill: "D", gender: "co-ed", age: "Under 30", games: 8, paid: 0.0, discount: 0.0, price: 0.0, due: 0.0, roster: [], upcomingEvents: [], pastEvents: [], win: 3, losses: 3, ties: 1, plusPts: 8, points: 1, goalsFor: 10, goalsAgainst: 1, goalDifferential: 9, gamesPlayed: 7)
    ,
    Team(id: 2, teamName: "Blue Team", league: "Fall D Co-ED", season: "Fall 2023", startData: "October 5, 2023", sport: "Soccer,Indoor", skill: "D", gender: "co-ed", age: "Under 30", games: 8, paid: 0.0, discount: 0.0, price: 0.0, due: 0.0, roster: [], upcomingEvents: [], pastEvents: [], win: 1, losses: 4, ties: 2, plusPts: 8, points: 1, goalsFor: 10, goalsAgainst: 1, goalDifferential: 9, gamesPlayed: 7)
    ,
    Team(id: 3, teamName: "Green Team", league: "Fall D Co-ED", season: "Fall 2023", startData: "October 5, 2023", sport: "Soccer,Indoor", skill: "D", gender: "co-ed", age: "Under 30", games: 8, paid: 0.0, discount: 0.0, price: 0.0, due: 0.0, roster: [], upcomingEvents: [], pastEvents: [], win: 4, losses: 0, ties: 3, plusPts: 8, points: 1, goalsFor: 10, goalsAgainst: 1, goalDifferential: 9, gamesPlayed: 7)
    ,
    Team(id: 4, teamName: "Purple Team", league: "Fall D Co-ED", season: "Fall 2023", startData: "October 5, 2023", sport: "Soccer,Indoor", skill: "D", gender: "co-ed", age: "Under 30", games: 8, paid: 0.0, discount: 0.0, price: 0.0, due: 0.0, roster: [], upcomingEvents: [], pastEvents: [], win: 0, losses: 5, ties: 2, plusPts: 8, points: 1, goalsFor: 10, goalsAgainst: 1, goalDifferential: 9, gamesPlayed: 7)
]
