//
//  ContentView.swift
//  Shared
//
//
//

import SwiftUI

struct HomeScreen: View {
    @State var showAddMood = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
            Image("background")
            
                VStack {
        
                NavigationLink(destination: AddMood(), isActive: $showAddMood, label: EmptyView.init)
               
                Text("Welcome to the Mood Tracker App!")
                    .padding()
                    .font(.system(size: 25))
                    .offset(y: -200)
                
                Button("Get Started") {
                    showAddMood = true
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
                
            }
            
        }
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
