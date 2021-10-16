//
//  ContentView.swift
//  WarCardGame
//
//  Created by Kalyani Chinchane on 16/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card-back"
    @State private var cpuCard = "card-back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea().aspectRatio(contentMode: .fit)
            
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card-\(playerRand)"
                    cpuCard = "card-\(cpuRand)"
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else {
                        cpuScore += 1
                    }
                }, label: {
                    Image("deal-button")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
