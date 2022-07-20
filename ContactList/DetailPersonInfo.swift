//
//  PersonsInfo.swift
//  ContactList
//
//  Created by Maksim Grischenko on 19.07.2022.
//

import SwiftUI

struct DetailPersonInfo: View {
    let person: Person
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
                .opacity(0.1)
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .trailing)
                        .padding()
                    Spacer()
                }
                
                ContactRow(imageName: "phone", text: person.phoneNumber)
                ContactRow(imageName: "tray", text: person.email)
            }
            .navigationTitle("\(person.fullName)")
            .listStyle(.plain)
            .padding(.top, 40)
        }
        
    }
    
}

struct PersonsInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailPersonInfo(person: Person.getPerson())
    }
}
