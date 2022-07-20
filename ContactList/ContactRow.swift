//
//  ContactRow.swift
//  ContactList
//
//  Created by Maksim Grischenko on 19.07.2022.
//

import SwiftUI

struct ContactRow: View {
    let imageName: String
    let text: String
    var body: some View {
            HStack {
                Image(systemName:"\(imageName)")
                    .foregroundColor(.blue)
                Text("\(text)")
            }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(imageName: "phone", text: "202-555-0515")
    }
}
