//
//  ViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

/// Второй вью контроллер
final class SecondVC: UIViewController {
    
    var name: String?
    var lastName: String?
    var surname: String?
     
    // MARK: - Visual Components
    
    private lazy var helloLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 50, width: 100, height: 50))
        label.text = helloFunc()
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 300, y: 127, width: 200, height: 40))
        label.text = self.name ?? "Text"
        label.backgroundColor = .gray
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
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        view.backgroundColor = .systemGray6
        view.addSubview(nameLabel)
        view.addSubview(lastnameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(helloLabel)
    }
}
