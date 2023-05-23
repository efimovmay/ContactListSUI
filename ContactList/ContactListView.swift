//
//  ContactListView.swift
//  ContactList
//
//  Created by Aleksey Efimov on 21.05.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "mail")
                }
            }
            .navigationTitle("Contact list")
            .listStyle(.plain)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getPersons())
    }
}
