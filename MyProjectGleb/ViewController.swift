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
    private let showButton = Button(title: "Show New User",
                                    backgroundColor: .red)
    private let hideButton = Button(title: "Hide User",
                                    backgroundColor: .green,
                                    shadow: true)
    private let stackViwe = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        helper.addPersons(userRepository.getPersons())
        
        let allPeople = helper.getListPerson()
        for person in allPeople {
            print(person.personalInformation.fullName)
        }
        
        setapLabel()
        setupStackView()
        view.addSubview(stackViwe)
        setupLayout()
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
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackViwe.axis = .vertical
        stackViwe.distribution = .fill
        stackViwe.alignment = .fill
        stackViwe.spacing = 10
        
        stackViwe.addArrangedSubview(textLabel)
        stackViwe.addArrangedSubview(showButton)
        stackViwe.addArrangedSubview(hideButton)
    }
    
    private func setupLayout() {
        stackViwe.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        stackViwe.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        stackViwe.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
        stackViwe.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
    }
}

