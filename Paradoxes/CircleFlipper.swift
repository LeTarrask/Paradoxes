//
//  CircleFlipper.swift
//  Paradoxes
//
//  Created by Alex Luna on 12/08/2020.
//

import SwiftUI

struct CircleFlipper: View {
    @State var fireOne = false
    @State var fireTwo = false
    @State var fireThree = false
    @State var fireFour = false
    @State var fireFive = false
    @State var fireSix = false
    @State var fireSeven = false
    @State var fireEight = false
    @State var fireNine = false
    @State var fireTen = false
    @State var fireEleven = false
    @State var fireTwelve = false

    var speed: Double = 0.79

    // psicodelia: easeinout com duration speed 0.05
    var foreverAnimation: Animation {
        Animation.easeInOut(duration: 5)
            .repeatForever()
    }

    var radius: CGFloat = 120
    let multiplier = CGFloat.pi/6
    
    var body: some View {
        ZStack {
            Group {
                Circulito(color: .pink).opacity(0.5)
                    .offset(x: fireOne ? radius * cos(0) : radius * cos(6*multiplier),
                            y: fireOne ? radius * sin(0) : radius * sin(6*multiplier))

                Circulito(color: .red)
                    .offset(x: fireTwo ? radius * cos(1*multiplier) : radius * cos(7*multiplier),
                            y: fireTwo ? radius * sin(1*multiplier) : radius * sin(7*multiplier))

                Circulito(color: .orange)
                    .offset(x: fireThree ? radius * cos(2*multiplier) : radius * cos(8*multiplier),
                            y: fireThree ? radius * sin(2*multiplier) : radius * sin(8*multiplier))

                Circulito(color: Color.yellow.opacity(0.5))
                    .offset(x: fireFour ? radius * cos(3*multiplier) : radius * cos(9*multiplier),
                            y: fireFour ? radius * sin(3*multiplier) : radius * sin(9*multiplier))

                Circulito(color: .yellow)
                    .offset(x: fireFive ? radius * cos(4*multiplier) : radius * cos(10*multiplier),
                            y: fireFive ? radius * sin(4*multiplier) : radius * sin(10*multiplier))

                Circulito(color: Color.green.opacity(0.5))
                    .offset(x: fireSeven ? radius * cos(5*multiplier) : radius * cos(11*multiplier),
                            y: fireSeven ? radius * sin(5*multiplier) : radius * sin(11*multiplier))
            }

            Group {
                Circulito(color: .green)
                    .offset(x: fireSix ? radius * cos(6*multiplier) : radius * cos(0),
                            y: fireSix ? radius * sin(6*multiplier) : radius * sin(0))

                Circulito(color: Color.blue.opacity(0.5))
                    .offset(x: fireEight ? radius * cos(7*multiplier) : radius * cos(1*multiplier),
                            y: fireEight ? radius * sin(7*multiplier) : radius * sin(1*multiplier))

                Circulito(color: .blue)
                    .offset(x: fireNine ? radius * cos(8*multiplier) : radius * cos(2*multiplier),
                            y: fireNine ? radius * sin(8*multiplier) : radius * sin(2*multiplier))

                Circulito(color: .purple)
                    .offset(x: fireTen ? radius * cos(9*multiplier) : radius * cos(3*multiplier),
                            y: fireTen ? radius * sin(9*multiplier) : radius * sin(3*multiplier))

                Circulito(color: .gray)
                    .offset(x: fireEleven ? radius * cos(10*multiplier) : radius * cos(4*multiplier),
                            y: fireEleven ? radius * sin(10*multiplier) : radius * sin(4*multiplier))

                Circulito(color: .black)
                    .offset(x: fireTwelve ? radius * cos(11*multiplier) : radius * cos(5*multiplier),
                            y: fireTwelve ? radius * sin(11*multiplier) : radius * sin(5*multiplier))
            }
        }
        .frame(width: 1, height: 1, alignment: .center)
        .onAppear() {
            withAnimation(foreverAnimation) {
                fireOne.toggle()
            }
            withAnimation(foreverAnimation.delay(speed)) {
                fireTwo.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*2)) {
                fireThree.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*3)) {
                fireFour.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*4)) {
                fireFive.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*5)) {
                fireSeven.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*6)) {
                fireSix.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*7)) {
                fireEight.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*8)) {
                fireNine.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*9)) {
                fireTen.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*10)) {
                fireEleven.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*11)) {
                fireTwelve.toggle()
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
