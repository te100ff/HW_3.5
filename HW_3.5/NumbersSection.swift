//
//  NumbersRow.swift
//  HW_3.5
//
//  Created by Stanislav Testov on 14.06.2021.
//

import SwiftUI

struct NumbersSection: View {
    let image: Contacts
    let info: String
    
    
    
    var body: some View {
       
        HStack {
            Image(systemName: image.rawValue)
                .foregroundColor(.blue)
            Text("\(info)")
        }
            
        }
    
}

struct NumbersRow_Previews: PreviewProvider {
    static var previews: some View {
        NumbersSection(image: .email, info: "Email")
    }
}
