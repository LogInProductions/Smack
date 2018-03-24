//
//  LoginVC.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // close logic VC when button is pressed
    @IBAction func closePressed(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
