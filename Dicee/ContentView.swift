//
//  ContentView.swift
//  Dicee
//
//  Created by lorenliang on 2023/12/1.
//

import SwiftUI

struct ContentView: View {
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
                        DiceView(n: 1)
                        DiceView(n: 2)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button("Roll") {
                        
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
