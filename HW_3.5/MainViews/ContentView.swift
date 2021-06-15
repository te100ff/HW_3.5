//
//  ContentView.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI


struct ContentView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            HomeScreen(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            Numbers(contacts: contacts)
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
