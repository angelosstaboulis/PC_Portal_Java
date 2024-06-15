//
//  ContentView.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
          
            JamesGossling().tabItem {
                Label("James Gossling", image:"james")
            }
            JavaBooks().tabItem {
                Label("Java Books", systemImage:"book")
            }
            History_Java().tabItem {
                Label("History Java", image: "history")
                
            }
            GameJava(counter:.init(),correct: .init(),checkBoxModel1: .init(imageName: "", title: "", selected: false, getSelected: ""),checkBoxModel2: .init(imageName: "", title: "", selected: false, getSelected: ""),checkBoxModel3: .init(imageName: "", title: "", selected: false, getSelected: "")).tabItem {
                Label("Game Java", image:"game")
            }
            FindUs().tabItem {
                Label("Find Us", systemImage: "map")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
