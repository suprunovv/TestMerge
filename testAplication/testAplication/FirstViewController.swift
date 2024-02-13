//
//  FirstViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

class FirstViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        button.setTitle("secondVC", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .black
        button.addTarget(self, action: #selector(goToSecVC), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.backgroundColor = .green
    }
                         
    @objc func goToSecVC() {
        let secondVC = SecondVC()
        secondVC.name = "Anton"
        secondVC.surname = "Alexandrovich"
        secondVC.lastName = "Suprunov"
        present(secondVC, animated: true, completion: nil)
    }
}
