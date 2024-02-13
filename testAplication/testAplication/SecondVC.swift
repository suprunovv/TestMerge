//
//  ViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

/// Второй вью контроллер
final class SecondVC: UIViewController {
    
    // MARK: - Visual Components
    
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
    
    // MARK: - Public Properties
    
    var name: String?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        view.backgroundColor = .blue
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
    }
}
