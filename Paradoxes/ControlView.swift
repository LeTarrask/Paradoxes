//
//  ControlView.swift
//  Paradoxes
//
//  Created by Alex Luna on 31/03/2021.
//

import SwiftUI

struct ControlView: View {
    @State var speed: Double = 0.79
    var body: some View {
        VStack {
            VStack {
                CircleFlipper(speed: speed, radius: 120)
                    .frame(width: 240, height: 340)
            }
            VStack {
                Text("Speed")
                Slider(value: $speed, in: 0.03...2.0,
                       onEditingChanged: { began in
                        print("began? \(began)")
                        print(speed)
                       })
            }
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
