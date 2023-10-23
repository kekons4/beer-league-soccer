//
//  LoadingRect.swift
//  beerLeagueSoccer
//
//  Created by Keon Pourboghrat on 10/17/23.
//

import SwiftUI

struct LoadingRect: View {
    
    @State private var opacity: Double = 0.1
    @State private var opacityLine: Double = 1.0
    @State private var startX: CGFloat = -235
    @State private var width: CGFloat = 1
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 235, height: 120)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .opacity(opacityLine)
                .foregroundColor(.gray)
                
            Rectangle()
                .frame(width: width, height: 120)
                .foregroundColor(.green)
                .opacity(opacity)
                .cornerRadius(3.0)
                .padding([.leading], -245)
                .onAppear {
                    let baseAnimation = Animation.easeOut(duration: 1.0)
                    let repeated = baseAnimation.repeatForever(autoreverses: false)
                    
                    withAnimation(repeated) {
                        width = 239
                        opacity = 1.0
                        opacityLine = 0.1
                    }
                }
        }
        .padding([.bottom], 50)
    }
}

struct LoadingRect_Previews: PreviewProvider {
    static var previews: some View {
        LoadingRect()
    }
}

