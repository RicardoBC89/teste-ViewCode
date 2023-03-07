//
//  primeiraViewController.swift
//  teste1
//
//  Created by User on 02/03/23.
//

import UIKit

class PrimeiraViewController: UIViewController {
    
    private let primeiraView = PrimeiraView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = primeiraView
        viewConstraints()
        primeiraView.delegate = self
    }
    
    func viewConstraints() {
        let constraints = [
            primeiraView.topAnchor.constraint(equalTo: view.topAnchor),
            primeiraView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            primeiraView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            primeiraView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        constraints.forEach { (item) in
            item.isActive = true
        }
    }
}

extension PrimeiraViewController: NavegacaoTelasDelegate {
    func delegateAction() {
        self.navigationController?.pushViewController(SegundaViewController(), animated: true)
    }
    
    
}
