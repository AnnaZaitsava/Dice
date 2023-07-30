//
//  ViewController.swift
//  Dice
//
//  Created by Anna Zaitsava on 30.07.23.
//

import UIKit

class ViewController: UIViewController {

    let diceImages: [UIImage] = [
                UIImage(named: "DiceOne")!,
                UIImage(named: "DiceTwo")!,
                UIImage(named: "DiceThree")!,
                UIImage(named: "DiceFour")!,
                UIImage(named: "DiceFive")!,
                UIImage(named: "DiceSix")!
                ]
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var diceimageOne: UIImageView!
    
    @IBOutlet var diceImageTwo: UIImageView!
    
        override func viewDidLoad() {        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollBauttonPressed(_ sender: UIButton) {
        diceimageOne.image = diceImages.randomElement()
        diceImageTwo.image = diceImages.randomElement()
        
        if diceImageTwo.image == diceimageOne.image {
            resultLabel.text = "YOU WIN!"
        } else { resultLabel.text = "TRY AGAIN!"}
    }
    
}

