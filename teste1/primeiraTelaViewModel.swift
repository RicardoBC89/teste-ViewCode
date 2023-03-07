//
//  primeiraTelaViewModel.swift
//  teste1
//
//  Created by User on 06/03/23.
//

import UIKit

class primeiraTelaViewModel: NSObject {
    
    private lazy var welcomeLabel: UILabel = {
       let label = UILabel()
       label.text = "Bem vindo ao APP"
       label.textColor = UIColor.green
       label.font = UIFont.systemFont(ofSize: 30)
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private lazy var introductionLabel: UILabel = {
       let label = UILabel()
       label.text = "Clique no botão abaixo para entrar"
       label.textColor = UIColor.green
       label.font = UIFont.systemFont(ofSize: 20)
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    func welcomeLabelConstraint() {
        let constraint = [
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60)]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    func introductionLabelConstraint() {
        let constraint = [
            introductionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            introductionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 30)]
        
        constraint.forEach {(item) in
            item.isActive = true
        }
    }
    
    
}
