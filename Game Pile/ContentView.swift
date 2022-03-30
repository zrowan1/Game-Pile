//
//  ContentView.swift
//  Game Pile
//
//  Created by Rowan Deschaux on 09/02/2022.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
        TabView
        {
            ZStack
            {
                Text("You have\n X\ngames in your collection")
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .background(Color("Baby Pink"))
                    .foregroundColor(Color("Snow"))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .padding(.bottom, 500)
                
                Text("Something for you??\n\n")
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .background(Color("Baby Pink"))
                    .foregroundColor(Color("Snow"))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    
                
                Button {
                    
                } label: {
                    Text("ADD GAME")
                        .foregroundColor(.black)
                }
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
                .background(Color("Baby Pink"))
                .foregroundColor(Color("Snow"))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .padding(.top, 500)
            }
            .tabItem
            {
                Image(systemName: "arrowtriangle.right.circle")
            }
            GamesView()
            .tabItem
            {
                Image(systemName: "gamecontroller")
            }
            StatsView()
            .tabItem
            {
                Image(systemName: "square.grid.3x3.fill")
            }
            SettingsView()
            .tabItem
            {
                Image(systemName: "gear")
            }

        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(Color("Silver Pink"))


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
