//
//  StudentRegisterViewController.swift
//  Clipper Help
//
//  Created by student on 3/16/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import UIKit
import Firebase

class StudentRegisterViewController: UIViewController {
    

    @IBOutlet var studentEmailText: UITextField!
    @IBOutlet var studentPasswordText: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func studentRegisterPressed(_ sender: AnyObject) {
        
        Auth.auth().createUser(withEmail: studentEmailText.text!, password: studentPasswordText.text!) { (user, error) in
            if error != nil {
                print(error!)
                print("This is an error")
            } else {
                print("Fuck yeah")
            }
            self.performSegue(withIdentifier: "StudentRegistered", sender: self)
        }
        
        
    }
    

    
}
    
    
    

