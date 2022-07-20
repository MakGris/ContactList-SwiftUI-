//
//  Person.swift
//  ContactList
//
//  Created by Maksim Grischenko on 19.07.2022.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    let email: String
    let phoneNumber: String
    
    static func getPersons() -> [Person] {
        let data = DataManager.shared
        var persons = [Person]()
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let emails = data.emails.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        
        for index in 0...9 {
            let somePerson = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(somePerson)
        }
        return persons
    }
    
    static func getPerson() -> Person {
        let data = DataManager.shared
        return Person(
            id: 1,
            name: data.names.randomElement() ?? "",
            surname: data.surnames.randomElement() ?? "",
            email: data.emails.randomElement() ?? "",
            phoneNumber: data.phoneNumbers.randomElement() ?? ""
        )
    }
}
