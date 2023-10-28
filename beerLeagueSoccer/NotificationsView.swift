//
//  NotificationsView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/28/23.
//

import SwiftUI

struct NotificationsView: View {
    
    @State var enableNotifications: Bool = true
    @State var enablePushNotifications: Bool = false
    
    var body: some View {
        
        VStack {
            Image(.logo)
                .resizable()
                .frame(width: 150, height: 150)
            
            Toggle(isOn: $enableNotifications) {
                HStack {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            }
            .padding()
            
            Toggle(isOn: $enablePushNotifications) {
                HStack {
                    Image(systemName: "person.wave.2")
                    Text("Push Notifications")
                }
            }
            .padding()
        }
        
        Spacer()
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

