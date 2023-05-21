//
//  ContentView.swift
//  ContactList
//
//  Created by Aleksey Efimov on 21.05.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()
    var body: some View {
        TabView {
            PersonListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
