//
//  ZipcodeDelegate.swift
//  TextFieldChallengeApp
//
//  Created by Mark Han on 2/28/22.
//

import Foundation
import UIKit

class ZipcodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        if (string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil) && newText.length <= 5 || string.isEmpty {
            return true
        } else {
            return false
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
}
