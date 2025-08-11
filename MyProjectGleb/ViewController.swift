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
   
    private let textLabel = UILabel()
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        view.alpha = 1
        
        helper.addPersons(userRepository.getPersons())
        
        let allPeople = helper.getListPerson()
        for person in allPeople {
            print(person.personalInformation.fullName)
        }
        
        setapLabel()
        view.addSubview(textLabel)
        view.addSubview(button)
    }
    
    private func setapLabel() {
        let allPeople = helper.getListPerson()
        if let randomUser = allPeople.randomElement() {
            textLabel.text = randomUser.personalInformation.fullName
        } else {
            textLabel.text = "Нет юзера"
        }
        textLabel.font = .systemFont(ofSize: 25, weight: .bold)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}

