//
//  ListHeader.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 15.06.2021.
//

import SwiftUI

struct ListSection: View {
    let fullName: String
    
    var body: some View {
        HStack {
            Image(systemName: "\(Contacts.person.rawValue)")
            Text("\(fullName)")
                .textCase(.none)
        }
    }
}

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListSection(fullName: "Person")
    }
}
