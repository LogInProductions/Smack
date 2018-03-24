//
//  ChannelVC.swift
//  Smack
//
//  Created by Logan Skurdal on 3/24/18.
//  Copyright © 2018 Logan Skurdal. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // make the chat screen slimmer when you open up the channel menu
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }



}
