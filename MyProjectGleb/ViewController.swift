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
    private let button = UIButton()
    private let stackViwe = UIStackView()
    
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
        setupButton()
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
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        textLabel.textAlignment = .center
    }
    
    private func setupButton() {
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 8
    }
    
    private func setupStackView() {
        stackViwe.axis = .vertical
        stackViwe.distribution = .fill
        stackViwe.alignment = .fill
        
        stackViwe.addArrangedSubview(textLabel)
        stackViwe.addArrangedSubview(button)
    }
    
    private func setupLayout() {
        stackViwe.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        stackViwe.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        stackViwe.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        stackViwe.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
        stackViwe.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
    }
}

