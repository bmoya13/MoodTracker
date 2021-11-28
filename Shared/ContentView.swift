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
            VStack{
                NavigationLink(destination: AddMood(), isActive: $showAddMood, label: EmptyView.init)
                
                Text("Welcome to the Mood Tracker App!")
                
                Button("Get Started") {
                    showAddMood = true
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
