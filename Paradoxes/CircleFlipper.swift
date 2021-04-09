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
    @State var fireSeven = false
    @State var fireSix = false
    @State var fireEight = false
    @State var fireNine = false
    @State var fireTen = false
    @State var fireEleven = false
    @State var fireTwelve = false

    var speed: Double //= 0.79

    // psicodelia: easeinout com duration speed 0.05
    var foreverAnimation: Animation {
        Animation.easeInOut(duration: 5)
            .repeatForever()
    }

    var radius: CGFloat

    init(speed: Double, radius: CGFloat) {
        self.radius = radius
        self.speed = speed
        x0 = radius * cos(0)
        y0 = radius * sin(0)
        x1 = radius * cos(1*multiplier)
        y1 = radius * sin(1*multiplier)
        x2 = radius * cos(2*multiplier)
        y2 = radius * sin(2*multiplier)
        x3 = radius * cos(3*multiplier)
        y3 = radius * sin(3*multiplier)
        x4 = radius * cos(4*multiplier)
        y4 = radius * sin(4*multiplier)
        x5 = radius * cos(5*multiplier)
        y5 = radius * sin(5*multiplier)
        x6 = radius * cos(6*multiplier)
        y6 = radius * sin(6*multiplier)
        x7 = radius * cos(7*multiplier)
        y7 = radius * sin(7*multiplier)
        x8 = radius * cos(8*multiplier)
        y8 = radius * sin(8*multiplier)
        x9 = radius * cos(9*multiplier)
        y9 = radius * sin(9*multiplier)
        x10 = radius * cos(10*multiplier)
        y10 = radius * sin(10*multiplier)
        x11 = radius * cos(11*multiplier)
        y11 = radius * sin(11*multiplier)
    }

    let multiplier = CGFloat.pi/6
    
    var body: some View {
        ZStack {
            Group {
                Circulito(color: .pink).opacity(0.5)
                    .offset(x: fireOne ? x0 : x6,
                            y: fireOne ? y0 : y6)

                Circulito(color: .red)
                    .offset(x: fireTwo ? x1 : x7,
                            y: fireTwo ? y1 : y7)

                Circulito(color: .orange)
                    .offset(x: fireThree ? x2 : x8,
                            y: fireThree ? y2 : y8)

                Circulito(color: Color.yellow.opacity(0.5))
                    .offset(x: fireFour ? x3 : x9,
                            y: fireFour ? y3 : y9)

                Circulito(color: .yellow)
                    .offset(x: fireFive ? x4 : x10,
                            y: fireFive ? y4 : y10)

                Circulito(color: Color.green.opacity(0.5))
                    .offset(x: fireSix ? x5 : x11,
                            y: fireSix ? y5 : y11)
            }

            Group {
                Circulito(color: .green)
                    .offset(x: fireSeven ? x6 : x0,
                            y: fireSeven ? y6 : y0)

                Circulito(color: Color.blue.opacity(0.5))
                    .offset(x: fireEight ? x7 : x1,
                            y: fireEight ? y7 : y1)

                Circulito(color: .blue)
                    .offset(x: fireNine ? x8 : x2,
                            y: fireNine ? y8 : y2)

                Circulito(color: .purple)
                    .offset(x: fireTen ? x9 : x3,
                            y: fireTen ? y9 : y3)

                Circulito(color: .gray)
                    .offset(x: fireEleven ? x10 : x4,
                            y: fireEleven ? y10 : y4)

                Circulito(color: .black)
                    .offset(x: fireTwelve ? x11 : x5,
                            y: fireTwelve ? y11 : y5)
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
                fireSix.toggle()
            }
            withAnimation(foreverAnimation.delay(speed*6)) {
                fireSeven.toggle()
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

    // Ball positions
    var x0: CGFloat
    var y0: CGFloat
    var x1: CGFloat
    var y1: CGFloat
    var x2: CGFloat
    var y2: CGFloat
    var x3: CGFloat
    var y3: CGFloat
    var x4: CGFloat
    var y4: CGFloat
    var x5: CGFloat
    var y5: CGFloat
    var x6: CGFloat
    var y6: CGFloat
    var x7: CGFloat
    var y7: CGFloat
    var x8: CGFloat
    var y8: CGFloat
    var x9: CGFloat
    var y9: CGFloat
    var x10: CGFloat
    var y10: CGFloat
    var x11: CGFloat
    var y11: CGFloat
}

struct CircleFlipper_Previews: PreviewProvider {
    static var previews: some View {
        CircleFlipper(speed: 0.79, radius: 120)
            .previewDevice("iPhone 8")
            .previewLayout(.device)
    }
}
