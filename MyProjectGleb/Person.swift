//
//  Person.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/29/25.
//

import Foundation

struct Person {
    
    var name = "Gleb"
    var surName = "Mosko"
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    init(name: String, surName: String) {
        self.name = name
        self.surName = surName
    }
}
