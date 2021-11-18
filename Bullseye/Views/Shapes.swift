//
//  Shapes.swift
//  Bullseye
//
//  Created by Benjamin McAdams on 11/12/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(Color.blue)
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: 100.0, alignment: .center)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
            Capsule()
                
            Ellipse()
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
