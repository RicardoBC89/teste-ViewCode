//
//  primeiraView.swift
//  teste1
//
//  Created by User on 07/03/23.
//

import Foundation
import UIKit

class PrimeiraView: UIView {
    
    public weak var delegate: NavegacaoTelasDelegate?
    
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
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        addSubview()
        welcomeLabelConstraint()
        introductionLabelConstraint()
        buttomConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedButton(_ sender: UIButton) {
        print("Esta funcionando")
        delegate?.delegateAction()
    }
    
    func addSubview() {
        addSubview(welcomeLabel)
        addSubview(introductionLabel)
        addSubview(buttom)
    }
    
    func welcomeLabelConstraint() {
        let constraint = [
            welcomeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -60)]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
    
    func introductionLabelConstraint() {
        let constraint = [
            introductionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            introductionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 30)]
        
        constraint.forEach {(item) in
            item.isActive = true
        }
    }
    
    func buttomConstraint() {
        let constraint = [
            buttom.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttom.topAnchor.constraint(equalTo: introductionLabel.bottomAnchor, constant: 70),
            buttom.heightAnchor.constraint(equalToConstant: 100),
            buttom.widthAnchor.constraint(equalToConstant: 100)]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}
