
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
        setupViewController()
        setupButtonActions()
    }
    
    @objc
    private func showRandomUser() {
      setupLabel()
    }
}
//MARK: - Setup view
   private extension ViewController {
       
       func setupButtonActions() {
           showButton.addTarget(
            self,
            action: #selector(showRandomUser),
            for: .touchUpInside
           )
           
           hideButton.addAction(UIAction { _ in
               self.textLabel.text = ""
           }, for: .touchUpInside)
       }
       
       func setupViewController() {
           view.backgroundColor = .brown
           
           helper.addPersons(userRepository.getPersons())
           
           let allPeople = helper.getListPerson()
           for person in allPeople {
               print(person.personalInformation.fullName)
           }
           
           setupLabel()
           setupStackView()
           view.addSubview(stackViwe)
           setupLayout()
       }
       
       func setupLabel() {
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
        
        func setupStackView() {
            stackViwe.axis = .vertical
            stackViwe.distribution = .fill
            stackViwe.alignment = .fill
            stackViwe.spacing = 20
            
            stackViwe.addArrangedSubview(textLabel, showButton, hideButton)
        }
    }

//MARK: - Setup Layout
extension ViewController {
    private func setupLayout() {
        stackViwe.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackViwe.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
           stackViwe.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}






