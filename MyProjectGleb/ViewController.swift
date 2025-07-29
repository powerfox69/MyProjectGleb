//
//  ViewController.swift
//  MyProjectGleb
//
//  Created by Gleb on 7/28/25.
//

import UIKit

class ViewController: UIViewController {

    let name = "Gleb"
    let surName = "Mosko"
    
    var fullNmae: String {
        "\(name) \(surName)"
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("Меня зовут \(name), я создал свое первое приложение")
        print(fullNmae)
        // Do any additional setup after loading the view.
    }


}

