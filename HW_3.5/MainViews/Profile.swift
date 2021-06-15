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
                    .frame(width: 150, height: 150, alignment: .center)
               
            Divider()
            HStack {
                VStack(alignment: .leading, spacing: 15) {
                    ListRow(image: .phone, info: person.phoneNumber)
                    ListRow(image: .email, info: person.email)
                }
                .font(.title)
                Spacer()
            }
            Divider()
            Spacer()
        }
        .padding()
        .navigationBarTitle("\(person.fullName)")
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(person: Person.getContactList()[0])
    }
}
