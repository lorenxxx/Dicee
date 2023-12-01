//
//  ContentView.swift
//  Dicee
//
//  Created by lorenliang on 2023/12/1.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    
    @State var rightDiceNumder = 1
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("diceeLogo")
                    Spacer()
                    HStack {
                        DiceView(n: leftDiceNumber)
                        DiceView(n: rightDiceNumder)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button("Roll") {
                        leftDiceNumber = Int.random(in: 1...6)
                        rightDiceNumder = Int.random(in: 1...6)
                    }
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(.red)
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
    
}
