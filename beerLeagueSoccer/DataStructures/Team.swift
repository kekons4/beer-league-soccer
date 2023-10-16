//
//  Team.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/13/23.
//

import Foundation

struct Team {
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
