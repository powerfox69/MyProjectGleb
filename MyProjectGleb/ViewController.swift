//
//  ViewController.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/28/25.
//

import UIKit

class ViewController: UIViewController {

   private let helper = Helper()
   private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        view.backgroundColor = .brown
        view.alpha = 0.9
        super.viewDidLoad()
        
        helper.addPersons(userRepository.getPersons())
        
        let allPeople = helper.getListPerson()
        for person in allPeople {
            print(person.personalInformation.fullName)
        }
    }
}

