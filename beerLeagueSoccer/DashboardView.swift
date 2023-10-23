//
//  DashboardView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var firstName: String = "Keon"
    @State private var age: String = "28"
    
    var body: some View {
        
        VStack {
            Image(.logo)
                .resizable()
                .frame(width: 150, height: 150)
            
            Text("Welcome back, \(firstName)")
                .bold()
                .font(.system(size: 35))
                .padding([.top, .bottom], 30)
            
            Text("Member card")
                .bold()
            
            AsyncImage(url: URL(string: "https://apps.daysmartrecreation.com/dash/cache/barcode_customer_8a61fd8820900a14fd6099e02ec6cbc5.jpg")) { image in
                image.padding([.bottom], 50)
            }
            placeholder: {
                LoadingRect()
            }
            
            Text("Upcoming Games:")
                .bold()
                .font(.system(size: 30))
            
//            VStack {
                List {
                    Section {
                        ForEach(upcomingEventsTest, id: \.id) { event in
                            GameCell(event: event)
                                .padding([.leading], 55)
                        }
                    }
                }
//            }
            
            Spacer()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
