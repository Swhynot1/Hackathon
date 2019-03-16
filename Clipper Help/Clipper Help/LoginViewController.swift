//
//  LoginViewController.swift
//  Clipper Help
//
//  Created by student on 3/16/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class LoginViewController: UIViewController {
    
    
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginButtonPressed(_ sender: AnyObject) {
        
        Auth.auth().signIn(withEmail: usernameText.text!, password: passwordText.text!) { (user, error) in
            if error != nil {
                print(error!)
                print("Shoot!")
            } else {
                print("Oh yeah!")
                self.performSegue(withIdentifier: "Login", sender: self)
            }
        }
        
    }
    
    
    @IBAction func RegisterButton(_ sender: Any) {
        
        performSegue(withIdentifier: "SignUp", sender: self)
    }
    
    
    
    
    
    
}





