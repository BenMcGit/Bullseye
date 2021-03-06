//
//  TextViews.swift
//  Bullseye
//
//  Created by Benjamin McAdams on 11/12/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.caption)
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(12.0)
    }
}

struct ScoreText: View {
    var score: Int
    var body: some View {
        Text(String(score))
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .bold()
    }
}

struct DateText: View {
    var date: Date
    var body: some View {
        Text(date, style: .time)
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .bold()
    }
}

struct BigBoldText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions Example")
            BigNumberText(text: "999")
            SliderLabelText(text: "100")
            LabelText(text: "Round")
            BodyText(text: "Body\n????????????????")
            ButtonText(text: "Start New Round")
            ScoreText(score: 100)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
