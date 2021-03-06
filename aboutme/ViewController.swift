//
//  ViewController.swift
//  aboutme
//
//  Created by Marina Lee on 7/14/21.
//  Copyright © 2021 marinalee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var marinaImage: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    static var instance: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ViewController.instance = self
        marinaImage.isUserInteractionEnabled = true
        marinaImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(ViewController.moveImage(_:))))

    }
    
    let images = [UIImage(named: "new pfp 1"), UIImage(named: "IMG_0839 1"), UIImage(named: "IMG_0618 1"), UIImage(named: "dinoimg"), UIImage(named: "IMG_4579 1"), UIImage(named: "IMG_8501 1")]
    
    @IBAction func imageClicked(_ sender: UIButton) {
   
        var previousNumber: UInt32? // used in randomNumber()

        func randomNumber() -> UInt32 {
            var randomNumber = arc4random_uniform(6)
            while previousNumber == randomNumber {
                randomNumber = arc4random_uniform(6)
            }
            previousNumber = randomNumber
            return randomNumber
        }
        
        imageButton.setImage(images[Int(randomNumber())], for: .normal)
        
        animateButton(sender)
    }
    
    
    @IBAction func aboutMeClicked(_ sender: UIButton) {
        animateButton(sender)
    }
    
    func animateButton(_ buttonToAnimate: UIView) {
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
                 buttonToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
             }) { (_) in
                 UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                     buttonToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
                 }, completion: nil)
             }
    }
    
    @objc func moveImage(_ recognizer: UIPanGestureRecognizer) {
        let translation: CGPoint = recognizer.translation(in: self.view)
        recognizer.view?.center = CGPoint(x: recognizer.view!.center.x + translation.x, y: recognizer.view!.center.y + translation.y)
        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
    }
   

}

