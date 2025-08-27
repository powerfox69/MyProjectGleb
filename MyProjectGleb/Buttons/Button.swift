//
//  Button.swift
//  MyProjectGleb
//
//  Created by Gleb on 8/22/25.
//

import UIKit

class Button: UIButton {
    
    init(title: String, backgroundColor: UIColor, shadow: Bool = false ) {
        super.init(frame: .zero)
        setupButton(title: title,
                    backgroundColor: backgroundColor,
                    shadow: shadow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
}
// MARK: - Setup

extension Button {
    private func setupButton(title: String, backgroundColor: UIColor, shadow: Bool) {
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        layer.cornerRadius = 8
        
        if shadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 20, height: 20)
            layer.shadowOpacity = 0.7
            layer.shadowRadius = 7
        }
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
