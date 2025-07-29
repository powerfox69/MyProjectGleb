//
//  ViewController.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/28/25.
//

import UIKit

class ViewController: UIViewController {

    let person = Person()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("Меня зовут \(person.name), я создал свое первое приложение")
        print(person.fullNmae)
        // Do any additional setup after loading the view.
    }


}

