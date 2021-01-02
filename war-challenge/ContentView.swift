//
//  ContentView.swift
//  war-challenge
//
//  Created by Markus Flodmark on 2021-01-02.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .fontWeight(.semibold)
                            .padding()
                        Text("0")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").fontWeight(.semibold).padding()
                        Text("0")
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
