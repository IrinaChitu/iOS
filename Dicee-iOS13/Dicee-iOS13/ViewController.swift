//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceLeftImageView: UIImageView!
    
    @IBOutlet weak var diceRightImageView: UIImageView!
    
    let dices = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        diceLeftImageView.image = UIImage(named:"DiceOne")
//        diceRightImageView.image = UIImage(named:"DiceOne")
//
//    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Rolling the dice")
        
//        let indexLeft = Int.random(in: 0..<dices.count)
        let indexRight = Int.random(in: 0..<dices.count)
        
        diceLeftImageView.image = UIImage(named: dices.randomElement()!)
        diceRightImageView.image = UIImage(named: dices[indexRight])
    }
}

