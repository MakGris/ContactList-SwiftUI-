//
//  ContactListTwo.swift
//  ContactList
//
//  Created by Maksim Grischenko on 20.07.2022.
//

import SwiftUI

struct DetailContactList: View {
    let persons: [Person]
    var body: some View {
        List(persons) { person in
            Section {
                ContactRow(imageName: "phone", text: person.phoneNumber)
                ContactRow(imageName: "tray", text: person.email)
            } header: {
                Text("\(person.fullName)")
            }

        }
        .navigationTitle("Contact List")
    }
}

struct ContactListTwo_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactList(persons: Person.getPersons())
    }
}
