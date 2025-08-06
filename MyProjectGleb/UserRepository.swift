//
//  UserRepository.swift
//  MyProjectGleb
//
//  Created by Gleb on 8/6/25.
//

import Foundation

class UserRepository {
    
    func getPersons() -> [User] {
        [
            User(login: "bob123", password: "1234",
                 personalInformation: Person(name: "Иван", surname: "Жук")),
            User(login: "tot123", password: "4321",
                 personalInformation: Person(name: "Ольга", surname: "Конь"))
        ]
    }
}






