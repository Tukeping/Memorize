//
//  ContentView.swift
//  Memorize
//
//  Created by tukeping on 2024/2/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🚀","🥝"]
    
    var body: some View {
        HStack {
            ForEach(0..<4, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack() {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}



#Preview {
    ContentView()
}
