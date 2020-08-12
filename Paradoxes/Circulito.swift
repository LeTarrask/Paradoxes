//
//  Circulito.swift
//  Paradoxes
//
//  Created by Alex Luna on 12/08/2020.
//

import SwiftUI

struct Circulito: View {
    var color: Color
    
    var body: some View {
        Circle()
            .size(width: 30, height: 30)
            .foregroundColor(color)
    }
}
