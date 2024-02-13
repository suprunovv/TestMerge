//
//  ViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

class SecondVC: UIViewController {
    
    var name: String?
    var lastName: String?
    var surname: String?
    
    private lazy var helloLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 50, width: 100, height: 50))
        label.text = helloFunc()
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        label.text = self.name ?? "Text"
        return label
    }()
    
    private lazy var lastnameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        label.text = lastName ?? "Error"
        return label
    }()
    
    private lazy var surnameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
        label.text = surname ?? "Error"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        view.addSubview(nameLabel)
        view.addSubview(lastnameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(helloLabel)
    }
}

