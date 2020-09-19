//
//  UIViewControllerExtentions.swift
//  NIBM-COVID19
//
//  Created by Sandaru on 9/3/20.
//  Copyright © 2020 Sandaru. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    //Hide keyboard
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
