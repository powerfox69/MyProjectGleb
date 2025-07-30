//
//  ViewController.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/28/25.
//

import UIKit

class ViewController: UIViewController {

    let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personOne = Person(name: "Иван", surName: "Жук")
        let personTwo = Person(name: "Ольга", surName: "Конь")
        
        helper.addPerson(personOne)
        helper.addPerson(personTwo)
        
        let allPeople = helper.getListPerson()
        for person in allPeople {
            print(person.fullName)
        }
    }


}

