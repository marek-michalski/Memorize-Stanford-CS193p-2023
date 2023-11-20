//
//  ContentView.swift
//  Memorize
//
//  Created by Marek on 17/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
//            CardView(isFaceUp: false)
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = true
    
    var body: some View {
        ZStack(alignment: .center) {
//            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
//                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill(.orange)
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
