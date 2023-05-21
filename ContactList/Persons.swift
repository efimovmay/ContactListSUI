//
//  Contacts.swift
//  ContactList
//
//  Created by Aleksey on 23.01.2023.
//

struct Person {
    let name: String
    let sureName: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + sureName
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.name.shuffled()
        let sureNames = DataStore.sureName.shuffled()
        let phones = DataStore.phone.shuffled()
        let emails = DataStore.email.shuffled()
        
        for personNumber in 0..<names.count {
            let person = Person(name: names[personNumber],
                                sureName: sureNames[personNumber],
                                phone: phones[personNumber],
                                email: emails[personNumber])
            persons.append(person)
        }
        return persons
    }
    
}



