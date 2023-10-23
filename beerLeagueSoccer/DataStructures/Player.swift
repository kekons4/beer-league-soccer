//
//  Player.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import Foundation

struct Player {
    var id: Int
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
    var address: String
    var apptNumber: String?
    var zipCode: String
    var city: String
    var country: String
    var state: String
    var gender: String
    var dob: String
    var emergencyContactName: String
    var emergencyContactPhone: String
    var preferedLocation: String?
    var goals: Int
    var assists: Int
    var yellowCards: Int
    var blueCards: Int
    var redCards: Int
}

let rosterDemo: [Player] = [
    Player(id: 0, firstName: "Keon", lastName: "Pourboghrat", email: "keonpourboghrat@gmail.com", phoneNumber: "5176484382", address: "Dublin Ohio", zipCode: "43017", city: "Dublin", country: "United States", state: "OH", gender: "Male", dob: "01-19-1995", emergencyContactName: "Farhang", emergencyContactPhone: "5173349807", goals: 3, assists: 6, yellowCards: 1, blueCards: 0, redCards: 0)
    ,
    Player(id: 1, firstName: "Cristiano", lastName: "Ronaldo", email: "cristianoronaldo@gmail.com", phoneNumber: "1234567890", address: "Saudi Arabia", zipCode: "12345", city: "Al-Naser", country: "Saudi Arabia", state: "None", gender: "Male", dob: "01-01-1981", emergencyContactName: "Georgina", emergencyContactPhone: "1234567890", goals: 900, assists: 602, yellowCards: 30, blueCards: 0, redCards: 10)
    ,
    Player(id: 2, firstName: "Lionel", lastName: "Messi", email: "lionelmessi@gmail.com", phoneNumber: "1234567890", address: "Miami Florida", zipCode: "12345", city: "Miami", country: "United States", state: "FL", gender: "Male", dob: "07-20-1989", emergencyContactName: "David Beckham", emergencyContactPhone: "1234567890", goals: 899, assists: 601, yellowCards: 31, blueCards: 0, redCards: 11)
]
