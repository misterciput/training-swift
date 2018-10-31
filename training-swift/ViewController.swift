//
//  ViewController.swift
//  training-swift
//
//  Created by nakama on 17/10/18.
//  Copyright © 2018 nakama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //performSegue(withIdentifier: "SignUpSegue", sender: self)
    }
    
    @IBAction func submit(_ sender: Any) {
        if let username = usernameField.text, let password = passwordField.text, !username.isEmpty, !password.isEmpty {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
                homeViewController.username = usernameField.text ?? ""
                
                self.navigationController?.pushViewController(homeViewController, animated: true)
            }
        }
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "HomeSegue" {
//            if let username = usernameField.text, let password = passwordField.text, !username.isEmpty, !password.isEmpty {
//                return true
//            }
//        }
//        
//        return false
//    }
    
}

