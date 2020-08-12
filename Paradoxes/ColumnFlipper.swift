//
//  ColumnFlipper.swift
//  Paradoxes
//
//  Created by Alex Luna on 12/08/2020.
//

import SwiftUI

struct ColumnFlipper: View {
    @State var variation: CGFloat = 0
    
    @State var initialState = true
    
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
                    .offset(x: 0,
                            y: self.initialState ? 0 : geometry.size.width-halfBall*2)
                
                Circulito(color: .red)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/7-halfBall : geometry.size.width/1.195-halfBall)
                
                Circulito(color: .orange)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/4-halfBall: geometry.size.width/1.37-halfBall)
                
                Circulito(color: .yellow)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/2.70 - halfBall : geometry.size.width/1.6-halfBall)
                
                Circulito(color: .green)
                    .offset(x: 0,
                            y: geometry.size.width/2-halfBall)
                
                Circulito(color: .blue).opacity(0.5)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/1.6-halfBall : geometry.size.width/2.70 - halfBall)
                
                Circulito(color: .blue)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/1.37-halfBall : geometry.size.width/4-halfBall)
                
                Circulito(color: .purple)
                    .offset(x: 0,
                            y: self.initialState ? geometry.size.width/1.195-halfBall : geometry.size.width/7-halfBall)
            }
            .onAppear() {
                withAnimation(foreverAnimation) {
                    self.initialState.toggle()
                }
            }
        }
    }
}

struct ColumnFlipper_Previews: PreviewProvider {
    static var previews: some View {
        ColumnFlipper()
    }
}
