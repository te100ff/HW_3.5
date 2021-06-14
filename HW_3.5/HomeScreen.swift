//
//  HomeScreen.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI

struct HomeScreen: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            Text("\(contact.fullName)")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
