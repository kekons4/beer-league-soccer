//
//  ProfileView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/28/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var player: Player
    
    @State private var apptDisabled: Bool = false
    
    @State private var email: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    @State private var address: String = ""
    @State private var aptNumber: String = ""
    
    var body: some View {
        
        VStack {
            
            Image(.logo)
                .resizable()
                .frame(width: 150, height: 150)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("Email")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter email", text: $email)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("First Name")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter first name", text: $firstName)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("Last Name")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter last name", text: $lastName)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("Phone Number")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter phone number", text: $phoneNumber)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("Address")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter address", text: $address)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
            
            HStack {
                Text("Appartment #")
                    .bold()
                    .font(.system(size: 20))
                    .padding([.trailing], 50)
                TextField("enter Apt. #", text: $aptNumber)
                    .cornerRadius(5)
                    .bold()
                    .foregroundColor(CustomColors.borderyellow)
            }
            .padding([.bottom], 10)
            .disabled(apptDisabled)
            
            Rectangle()
                .frame(width: 380, height: 0.5)
                .foregroundColor(Color.secondary)
                .padding([.bottom], 10)
        }
        .task {
            if player.email != "" {
                email = player.email
                firstName = player.firstName
                lastName = player.lastName
                phoneNumber = player.phoneNumber
                address = player.address
                if player.apptNumber != nil {
                    apptDisabled = false
                    aptNumber = player.apptNumber!
                } else {
                    apptDisabled = true
                }
            }
        }
        
        Spacer()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(player: rosterDemo[0])
    }
}
