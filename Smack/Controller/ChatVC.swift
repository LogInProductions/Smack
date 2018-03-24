//
//  ChatVC.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    // Outlets
    @IBOutlet weak var menuBtn: UIButton!   // menu button. Actually and outlet tho, not an action
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // action when button is pressed. Reveals channel vieew controller.
        // Selcetor is methgod inside of SWRevealController. created a selector. Method we wil revoke, which is from SWViewController file. Look at source code for more info
        // target is reveal controller
        // finally, touch up inside to make it happen.
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        // add slide to open up channerl menu
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // add tap on chat screen to go back to it when channel view is open.
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())          // both of these are parts of the SWRevealViewController file
    }



}
