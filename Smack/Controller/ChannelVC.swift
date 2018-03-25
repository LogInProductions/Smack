//
//  ChannelVC.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    // function to unwind dismiss button from create account VC
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue)
    {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // make the chat screen slimmer when you open up the channel menu
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    // segue to login VC when you press the login button
    @IBAction func loginBtnPressed(_ sender: Any)
    {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
