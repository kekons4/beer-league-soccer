//
//  DashboardView.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/9/23.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var firstName:String = "Keon"
    
    var body: some View {
        VStack {
            Text("Welcome back, \(firstName)")
                .bold()
                .font(.system(size: 40))
                .padding([.top, .bottom], 30)
            
            AsyncImage(url: URL(string: "https://apps.daysmartrecreation.com/dash/cache/barcode_customer_8a61fd8820900a14fd6099e02ec6cbc5.jpg"))
            
            Spacer()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
