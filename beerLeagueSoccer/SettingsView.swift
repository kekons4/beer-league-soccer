//
//  SettingsView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        VStack {
            
            Image(.logo)
                .resizable()
                .frame(width: 150, height: 150)
            
            Text("Settings View")
            
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
