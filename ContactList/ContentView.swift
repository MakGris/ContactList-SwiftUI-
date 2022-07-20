//
//  ContentView.swift
//  ContactList
//
//  Created by Maksim Grischenko on 19.07.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersons()
    
    var body: some View {
        
        TabView {
            NavigationView {
                CommonContactList(persons: persons)
            }
            .tabItem {
                Label("Contacts", systemImage: "person.3")
            }
            
            NavigationView {
                DetailContactList(persons: persons)
            }
            .tabItem {
                Label("Numbers", systemImage: "phone")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
