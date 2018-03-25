//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // action when dismiss button is pressed, it unwinds all the way back to channel VC
    @IBAction func closePressed(_ sender: Any)
    {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
