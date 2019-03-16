//
//  RegisterViewController.swift
//  Clipper Help
//
//  Created by student on 3/16/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import Foundation
import UIKit


class RegisterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func StudentRegisterButton(_ sender: Any) {
        performSegue(withIdentifier: "StudentSignUp", sender: self)
    }
    
    
    
    
}
