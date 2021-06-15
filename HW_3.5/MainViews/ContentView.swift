//
//  ContentView.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            Numbers()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
