//
//  Contacts.swift
//  ContactList
//
//  Created by Aleksey on 23.01.2023.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let sureName: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + sureName
    }
    
    static func getPerson() -> Person {
        let person = Person(id: 1,
                            name: DataStore.name[1],
                            sureName: DataStore.sureName[1],
                            phone: DataStore.phone[1],
                            email: DataStore.email[1])
        return person
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.name.shuffled()
        let sureNames = DataStore.sureName.shuffled()
        let phones = DataStore.phone.shuffled()
        let emails = DataStore.email.shuffled()
        
        for personNumber in 0..<names.count {
            let person = Person(id: personNumber,
                                name: names[personNumber],
                                sureName: sureNames[personNumber],
                                phone: phones[personNumber],
                                email: emails[personNumber])
            persons.append(person)
        }
        return persons
    }
    
}



