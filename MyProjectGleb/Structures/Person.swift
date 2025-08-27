//
//  Person.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/29/25.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
