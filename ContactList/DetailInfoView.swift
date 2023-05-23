//
//  DetailInfoView.swift
//  ContactList
//
//  Created by Aleksey Efimov on 21.05.2023.
//

import SwiftUI

struct DetailInfoView: View {
    let person: Person
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("Phone: ")
                Text("\(person.phone)")
                Spacer()
            }
            HStack {
                Text("Email: ")
                Text("\(person.email)")
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationTitle(person.fullName)
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(person: Person.getPersons().first!)
    }
}
