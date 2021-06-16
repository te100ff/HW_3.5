//
//  Profile.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 15.06.2021.
//

import SwiftUI

struct Profile: View {
    let person: Person
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .overlay(
                    Circle()
                            .stroke(Color.black, lineWidth: 4)
                            .frame(width: 150, height: 150)
                )
            
            Divider()
            
            List {
                ListRow(image: .phone, info: person.phoneNumber)
                ListRow(image: .email, info: person.email)
            }
            .font(.subheadline)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(person.fullName)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(person: Person.getContactList().first!)
    }
}
