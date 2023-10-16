//
//  Event.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/13/23.
//

import Foundation

struct Event {
    var id: Int
    var homeTeam: String
    var awayTeam: String
    var location: String
    var dateTime: String
}

let upcomingEventsTest: [Event] = [
    Event(id: 1, homeTeam: "Red Team", awayTeam: "Blue Team", location: "South Field", dateTime: "October 15 2023 | 4:20pm"),
    Event(id: 2, homeTeam: "Green Team", awayTeam: "Red Team", location: "East Field", dateTime: "October 22 2023 | 5:10pm"),
    Event(id: 3, homeTeam: "Purple Team", awayTeam: "Red Team", location: "West Field", dateTime: "November 5 2023 | 8:15pm")
]
