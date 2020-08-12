//
//  ContentView.swift
//  Paradoxes
//
//  Created by Alex Luna on 12/08/2020.
//

import SwiftUI

struct LineFlipper: View {
    @State var variation: CGFloat = 0
    
    @State var initialState = false
    
    var speed: Double = 2.0
    
    var halfBall: CGFloat = 15
        
    var foreverAnimation: Animation {
        Animation.linear(duration: speed)
            .repeatForever()
    }
    
    var body: some View {
        GeometryReader { geometry in
            Group {
                Circulito(color: .pink).opacity(0.5)
                    .offset(x: self.initialState ? 0 : geometry.size.width-halfBall*2,
                            y: 0)
                
                Circulito(color: .red)
                    .offset(x: self.initialState ? geometry.size.width/7-halfBall : geometry.size.width/1.195-halfBall,
                            y: 0)

                Circulito(color: .orange)
                    .offset(x: self.initialState ? geometry.size.width/4-halfBall: geometry.size.width/1.37-halfBall,
                            y: 0)

                Circulito(color: .yellow)
                    .offset(x: self.initialState ? geometry.size.width/2.70 - halfBall : geometry.size.width/1.6-halfBall,
                            y: 0)

                Circulito(color: .green)
                    .offset(x: geometry.size.width/2-halfBall,
                            y: 0)

                Circulito(color: .blue).opacity(0.5)
                    .offset(x: self.initialState ? geometry.size.width/1.6-halfBall : geometry.size.width/2.70 - halfBall,
                            y: 0)

                Circulito(color: .blue)
                    .offset(x: self.initialState ? geometry.size.width/1.37-halfBall : geometry.size.width/4-halfBall,
                            y: 0)

                Circulito(color: .purple)
                    .offset(x: self.initialState ? geometry.size.width/1.195-halfBall : geometry.size.width/7-halfBall,
                            y: 0)
                
//                Circulito(color: .pink).opacity(0.5)
//                    .offset(x: self.initialState ? geometry.size.width-halfBall*2 : 0,
//                            y: 0)
                
            }
            .onAppear() {
                withAnimation(foreverAnimation) {
                    self.initialState.toggle()
                }
            }
        }
    }
}


struct Circulito: View {
    var color: Color
    
    var body: some View {
        Circle()
            .size(width: 30, height: 30)
            .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LineFlipper()
    }
}
