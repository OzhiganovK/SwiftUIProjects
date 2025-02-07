//
//  TextViews.swift
//  SwiftUIBullseye
//
//  Created by Kostya Ozhiganov on 20.05.2022.
//

import SwiftUI

struct InstructionText: View {
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}
struct BigNumberText: View {
    var text: String
    var body: some View{
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View{
    
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View{
    var text: String
    var body: some View{
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}
struct ButtonText: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

struct ScoreText: View{
    var score: Int
    var body: some View{
        Text(String(score))
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .foregroundColor(Color ("TextColor"))
    }
}
struct DateText: View{
    var date: Date
    var body: some View{
        Text(date, style: .time)
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .foregroundColor(Color ("TextColor"))
        
    }
}
struct BigBoldText: View{
    let text: String
    var body: some View{
        Text(text.uppercased())
            .font(.title)
            .bold()
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.black)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        InstructionText(text: "🎯PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        BigNumberText(text: "999")
            LabelText(text: "9")
            BodyText(text: "text")
            ButtonText(text: " Button text")
            ScoreText(score: 222)
            DateText(date: Date())
            BigBoldText(text: "Bold")
        }
        .padding()
    }
}

