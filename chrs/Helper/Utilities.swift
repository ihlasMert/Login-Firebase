//
//  Utilities.swift
//  chrs
//
//  Created by ihlas on 18.01.2022.
//

import Foundation
import UIKit

class Utilities{
    static func styleTextField( textfield: UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/355, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        textfield.borderStyle = .none
        
        textfield.layer.addSublayer(bottomLine)
        
    }
    static func styleFilledButton(button: UIButton){
    
        button.backgroundColor = UIColor.init(red: 48/355, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
}
    static func styleHollowButton( button: UIButton){
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
        
    }
    static func isPasswordValid( password: String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[a-z])(?=.*$@$#!%*?&])[A-ZA-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
}
