//
//  ContactListOne.swift
//  ContactList
//
//  Created by Maksim Grischenko on 19.07.2022.
//

import SwiftUI

struct CommonContactList: View {
    let persons: [Person]
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: DetailPersonInfo(person: person)) {
                Text("\(person.fullName)")
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
    }


struct ContactListOne_Previews: PreviewProvider {
    static var previews: some View {
        CommonContactList(persons: Person.getPersons())
    }
}
