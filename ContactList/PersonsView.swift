//
//  PersonsView.swift
//  ContactList
//
//  Created by Aleksey Efimov on 21.05.2023.
//

import SwiftUI

struct PersonsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: DetailInfoView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Persons")
        }
    }
}

struct PersonsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsView(persons: Person.getPersons())
    }
}
