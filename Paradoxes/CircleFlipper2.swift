//
//  CircleFlipper2.swift
//  Paradoxes
//
//  Created by Alex Luna on 30/03/2021.
//

import SwiftUI

struct CircleFlipper2: View {

    @State var firePink = false
    @State var fireRed = false
    @State var fireOrange = false
    @State var fireYellow = false

    var speed: Double = 2.0

    var foreverAnimation: Animation {
        Animation.easeOut(duration: speed)
            .repeatForever()
    }

    var radius: CGFloat = 120

    var body: some View {
        ZStack {
            Circulito(color: .pink).opacity(0.5)
                .offset(x: firePink ? radius * cos(0) : radius * cos(180),
                        y: firePink ? radius * sin(0) : radius * sin(180))

            Circulito(color: .red)
                .offset(x: fireRed ? radius * cos(45) : radius * cos(225),
                        y: fireRed ? radius * sin(45) : radius * sin(225))

            Circulito(color: .orange)
                .offset(x: fireOrange ? radius * cos(90) : radius * cos(270),
                        y: fireOrange ? radius * sin(90) : radius * sin(270))

            Circulito(color: .yellow)
                .offset(x: fireYellow ? radius * cos(135) : radius * cos(0),
                        y: fireYellow ? radius * sin(135) : radius * sin(0))

        }
        .frame(width: 30, height: 30, alignment: .center)
        .onAppear() {
            withAnimation(foreverAnimation) {
                self.firePink.toggle()
            }
            withAnimation(foreverAnimation) {
                self.fireRed.toggle()
            }
            withAnimation(foreverAnimation) {
                self.fireOrange.toggle()
            }
            withAnimation(foreverAnimation) {
                self.fireYellow.toggle()
            }
        }
    }
}

struct CircleFlipper2_Previews: PreviewProvider {
    static var previews: some View {
        CircleFlipper2()
    }
}
