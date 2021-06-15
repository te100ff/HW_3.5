//
//  Numbers.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI

struct Numbers: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {

        
        List {
            ForEach(contacts, id: \.self) { contact in
                Section(header: ListSection(fullName: contact.fullName)) {
                    ListRow(image: .phone, info: contact.phoneNumber)
                    ListRow(image: .email, info: contact.email)
                        
                        
                }
               
            }
        }
        
    }
}
    
    struct Numbers_Previews: PreviewProvider {
        static var previews: some View {
            Numbers()
        }
    }

