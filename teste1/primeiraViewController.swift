//
//  primeiraViewController.swift
//  teste1
//
//  Created by User on 02/03/23.
//

import UIKit

class primeiraViewController: UIViewController {
    
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
    
    private lazy var buttom: UIButton = {
       let button = UIButton()
       button.setTitle("Iniciar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .magenta
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tappedButton(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedButton(_ sender: UIButton) {
        print("Esta funcionando")
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        addSubview()
        welcomeLabelConstraint()
        introductionLabelConstraint()
        buttomConstraint()
        
    }
    
    func addSubview() {
        view.addSubview(welcomeLabel)
        view.addSubview(introductionLabel)
        view.addSubview(buttom)
    }
    
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
    
    func buttomConstraint() {
        let constraint = [
            buttom.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttom.topAnchor.constraint(equalTo: introductionLabel.bottomAnchor, constant: 70),
            buttom.heightAnchor.constraint(equalToConstant: 100),
            buttom.widthAnchor.constraint(equalToConstant: 100)]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}

