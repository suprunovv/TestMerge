//
//  FirstViewController.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import UIKit

/// Стартовый экран
final class FirstViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        button.setTitle("secondVC", for: .normal)
        button.backgroundColor = .blue
        button.tintColor = .black
        button.addTarget(self, action: #selector(goToSecVC), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        view.addSubview(button)
        view.backgroundColor = .green
    }
    
    @objc private func goToSecVC() {
        let secondVC = SecondVC()
        present(secondVC, animated: true, completion: nil)
    }

}
