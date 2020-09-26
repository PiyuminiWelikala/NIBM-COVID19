//
//  AvoidCrowdedViewController.swift
//  NIBM-COVID19
//
//  Created by Sandaru on 9/15/20.
//  Copyright © 2020 Sandaru. All rights reserved.
//

import UIKit
import Firebase

class AvoidCrowdedViewController: UIViewController {

    let userID = Auth.auth().currentUser?.uid
    let ref = Database.database().reference()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionYes(_ sender: Any) {
        if let userID = self.userID {
            self.ref.child("users").child(userID).child("avoidCrowded").setValue(true)
        }
    }
    
    @IBAction func actionNo(_ sender: Any) {
        if let userID = self.userID {
            self.ref.child("users").child(userID).child("avoidCrowded").setValue(true)
        }
    }

}
