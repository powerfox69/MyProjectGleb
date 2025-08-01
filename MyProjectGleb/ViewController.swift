//
//  ViewController.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/28/25.
//

import UIKit

class ViewController: UIViewController {

   private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personOne = User(
            login: "bob123",
            password: "1234",
            personalInformation: Person(name: "Иван", surname: "Жук"))
        
        let personTwo = User(
            login: "tot123",
            password: "4321",
            personalInformation: Person(name: "Ольга", surname: "Конь"))
        
        helper.addPerson(personOne)
        helper.addPerson(personTwo)
        
        let allPeople = helper.getListPerson()
        for person in allPeople {
            print(person.personalInformation.fullName)
        }
    }
}

