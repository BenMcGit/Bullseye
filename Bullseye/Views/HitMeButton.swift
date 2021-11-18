//
//  HitMeButton.swift
//  Bullseye
//
//  Created by Benjamin McAdams on 11/12/21.
//

import SwiftUI

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("Hello SwiftUI!")
            self.alertIsVisible = true
        }) {
            Text("Hit Me!".uppercased())
                .font(.title3)
                .bold()
                .foregroundColor(Color("TextColor"))
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors:[Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue: Int = Int(self.sliderValue.rounded())
            return Alert(title: Text("The slider's value is \(Int(sliderValue))"), message: Text("You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
        })
    }
}

struct HitMeButton_Previews: PreviewProvider {
    static var previews: some View {
        HitMeButton()
    }
}
