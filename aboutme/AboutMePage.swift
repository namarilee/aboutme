//
//  AboutMePage.swift
//  aboutme
//
//  Created by Marina Lee on 7/14/21.
//  Copyright © 2021 marinalee. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class AboutMePage: UIViewController {
    
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)
    }
    
    @IBAction func igButtonClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)
        loadPage(link: "https://instagram.com/namarilee")
    }
    
    @IBAction func spotifyClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)
        loadPage(link: "https://open.spotify.com/user/marinalee217?si=b316c540d00d4d43")

    }
    
    @IBAction func discordClicked(_ sender: UIButton) {
        ViewController.instance.animateButton(sender)
        loadPage(link: "https://discordapp.com/users/726184733385556018")
    }
    
    func loadPage(link: String) {
//        let webView = WKWebView(frame: view.frame)
//        view.addSubview(webView)
        let url = URL(string: link)!
//        let request = URLRequest(url: url)
//        webView.load(request)
        
        UIApplication.shared.open(url)

    }
}
