//
//  ViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

class SecondVC: UIViewController {
    
    var name: String?
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        label.text = self.name ?? "Text"
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 200, y: 400, width: 100, height: 50))
        label.text = "Another text"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
    }
}

