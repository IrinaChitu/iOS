//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    let totalBalls = 5
    
    @IBOutlet weak var magicBallImageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        magicBallImageView.image = UIImage(named: "ball\(Int.random(in: 1...totalBalls))")
    }

}

