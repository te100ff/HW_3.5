//
//  ListHeader.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 15.06.2021.
//

import SwiftUI

struct ListHeader: View {
    let fullName: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
            Text("\(fullName)")
        }
    }
}

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListHeader(fullName: "Person")
    }
}
