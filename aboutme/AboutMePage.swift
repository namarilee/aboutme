//
//  AboutMePage.swift
//  aboutme
//
//  Created by Marina Lee on 7/14/21.
//  Copyright © 2021 marinalee. All rights reserved.
//

import Foundation
import UIKit

class AboutMePage: UIViewController {
    
    @IBOutlet weak var igButton: UIButton!
    
    @IBAction func igButtonClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)
    }
    
    @IBAction func spotifyClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)

    }
    
    @IBAction func discordClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)

    }
}
