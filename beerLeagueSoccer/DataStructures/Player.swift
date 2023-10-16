//
//  Player.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import Foundation

struct Player {
    var id: UUID
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
