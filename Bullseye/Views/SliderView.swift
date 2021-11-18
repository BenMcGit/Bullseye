//
//  SliderView.swift
//  Bullseye
//
//  Created by Benjamin McAdams on 11/12/21.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in:1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    @State var value: Double = 50.0
    
    static var previews: some View {
        SliderView(sliderValue: $value)
    }
}
