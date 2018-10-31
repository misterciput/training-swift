//
//  HomeViewController.swift
//  training-swift
//
//  Created by nakama on 26/10/18.
//  Copyright © 2018 nakama. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    
    public var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    debugPrint(usernameLabel)
        usernameLabel.text = username ?? ""

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
