//
//  HomeScreen.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI

struct HomeScreen: View {
    let contacts: [Person]
    
    var body: some View {
        
        NavigationView {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: Profile(person: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(contacts: Person.getContactList())
    }
}
