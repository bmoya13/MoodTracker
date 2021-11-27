//
//  ContentView.swift
//  Shared
//
//
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        Text("Welcome to the Mood Tracker App!")
            .padding()
        Button("Get Started") {
            NavigationLink(destination: AddMood()) {
                Text("Hello")
            }
        }
        .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
    }
}

struct AddMood: View {
    var body: some View {
        Text("Add your mood here")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen()
            AddMood()
        }
    }
}
