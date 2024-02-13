//
//  extensionVC.swift
//  testAplication
//
//  Created by MacBookPro on 13.02.2024.
//

import Foundation
import UIKit

extension UIViewController {
    
    func helloFunc() -> String {
        "Приветствую на экране \(self.title ?? "")"
    }
}
