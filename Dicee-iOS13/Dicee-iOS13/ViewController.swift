//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    @IBOutlet weak var pastDice1: UIImageView!
    
    @IBOutlet weak var pastDice2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView1.alpha = 0.5
        
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        diceImageView2.alpha = 0.5
    }
    
    var dice1Array = [1]
    var dice2Array = [1]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        let diceValue = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        let randomDice1 = Int.random(in: 0...5)
        let randomDice2 = Int.random(in: 0...5)

        
        dice1Array.append(randomDice1)
        dice2Array.append(randomDice2)

        
        
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1

        diceImageView1.image =  diceValue[dice1Array.last!]
        pastDice1.image = diceValue[dice1Array[dice1Array.count-2]]
        print(dice1Array)
        
        diceImageView2.image =  diceValue[dice2Array.last!]
        pastDice2.image = diceValue[dice2Array[dice2Array.count-2]]
        print(dice2Array)

    }



}

