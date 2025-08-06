//
//  Helper.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/30/25.
//

import Foundation

class Helper {
    
    private var people: [User] = []
    
    func addPerson(_ person: User) {
        people.append(person)
    }
    
    func getListPerson() -> [User] {
        people
    }
    
    func addPersons(_ persons : [User]) {
        people.append(contentsOf: persons)
    }
}
