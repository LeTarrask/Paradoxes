//
//  CircleFlipper.swift
//  Paradoxes
//
//  Created by Alex Luna on 12/08/2020.
//

import SwiftUI

struct CircleFlipper: View {
    @State var firePink = false
    @State var fireRed = false
    @State var fireOrange = false
    @State var fireYellow = false
    @State var fireGreen = false
    @State var fireLight = false
    @State var fireBlue = false
    @State var firePurple = false
    @State var fireBlack = false
    
    var speed: Double = 2.0
    
    var halfBall: CGFloat = 15
    
    var foreverAnimation: Animation {
        Animation.easeInOut(duration: speed)
            .delay(0.2)
            .repeatForever()
    }
    
    var body: some View {
        ZStack {
            Circulito(color: .pink).opacity(0.5)
                .offset(x: self.firePink ? 15 : 335,
                        y: 187)
            
            Circulito(color: .red)
                .offset(x: self.fireRed ? 14 : 360,
                        y: self.fireRed ? 260 : 115)
            
            
            Circulito(color: .orange)
                .offset(x: self.fireOrange ? 55 : 320,
                        y: self.fireOrange ? 320 : 55)
            
            Circulito(color: .yellow)
                .offset(x: self.fireYellow ? 115 : 260,
                        y: self.fireYellow ? 360 : 15)
            
            Circulito(color: .green)
                .offset(x: 187,
                        y: self.fireGreen ? 375 : 0)
            
            Circulito(color: .blue).opacity(0.5)
                .offset(x: self.fireLight ? 260 : 115,
                        y: self.fireLight ? 360 : 15)
            
            Circulito(color: .blue)
                .offset(x: self.fireBlue ? 310 : 54,
                        y: self.fireBlue ? 320 : 54)
            
            Circulito(color: .purple)
                .offset(x: self.firePurple ? 330 : 15,
                        y: self.firePurple ? 260 : 115)
            
            Circulito(color: .black).opacity(0.5)
                .offset(x: self.fireBlack ? 320 : 15,
                        y: self.fireBlack ? 210 : 172)
            
        }
        .onAppear() {
            withAnimation(foreverAnimation) {
                self.firePink.toggle()
            }
            withAnimation(foreverAnimation.delay(0.2)) {
                self.fireRed.toggle()
            }
            withAnimation(foreverAnimation.delay(0.4)) {
                self.fireOrange.toggle()
            }
            withAnimation(foreverAnimation.delay(0.6)) {
                self.fireYellow.toggle()
            }
            withAnimation(foreverAnimation.delay(0.8)) {
                self.fireGreen.toggle()
            }
            withAnimation(foreverAnimation.delay(1.0)) {
                self.fireLight.toggle()
            }
            withAnimation(foreverAnimation.delay(1.2)) {
                self.fireBlue.toggle()
            }
            withAnimation(foreverAnimation.delay(1.4)) {
                self.firePurple.toggle()
            }
            withAnimation(foreverAnimation.delay(1.6)) {
                self.fireBlack.toggle()
            }
        }
    }
}

struct CircleFlipper_Previews: PreviewProvider {
    static var previews: some View {
        CircleFlipper()
            .previewDevice("iPhone 8")
            .previewLayout(.device)
    }
}
