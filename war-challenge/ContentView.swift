//
//  ContentView.swift
//  war-challenge
//
//  Created by Markus Flodmark on 2021-01-02.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerPoints = 0
    @State var cpuPoints = 0
    
    var body: some View {
        ZStack {
            Image("background").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Image("logo")
                    .padding()
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRandomNr = Int.random(in: 2...14)
                    let cpuRandomNr = Int.random(in:2...14)
                    let card = "card"
                    playerCard = card + String(playerRandomNr)
                    cpuCard = card + String(cpuRandomNr)
                    
                    if(playerRandomNr > cpuRandomNr) {
                        playerPoints += 1
                    } else if (playerRandomNr < cpuRandomNr) {
                        cpuPoints += 1
                    } else {
                      playerPoints+=1
                        cpuPoints+=1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .fontWeight(.semibold)
                            .padding()
                        Text(String(playerPoints))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").fontWeight(.semibold).padding()
                        Text(String(cpuPoints))
                            .font(.title)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
