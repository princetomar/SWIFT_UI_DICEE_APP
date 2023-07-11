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
    
    var leftDiceNumber = 1;
    var rightDiceNumber = 5;
    


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let images = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        diceImageView1.image = images[leftDiceNumber]
        
//        diceImageView2.image = images[rightDiceNumber];

        diceImageView2.image = images.randomElement()
        //        if(leftDiceNumber < 5){
//            leftDiceNumber += 1;
//        }else{
//            leftDiceNumber = 0;
//        }
//
//        if(rightDiceNumber > 1){
//            rightDiceNumber -= 1;
//        }else{
//            rightDiceNumber = 5;
//        }
//
        
        // ASSIGN RANDOM VALUE B/W 1-6 TO BOTH NUMBERS
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        print("The value of left Dice number is : \(leftDiceNumber) ")
        
        print("The value of right Dice number is : \(rightDiceNumber ) ")

    }

}

