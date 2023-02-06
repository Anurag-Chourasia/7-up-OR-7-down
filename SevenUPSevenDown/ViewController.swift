//
//  ViewController.swift
//  SevenUPSevenDown
//
//  Created by Anurag Chourasia on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet var rollButton: UIButton!
    
    override func viewDidLoad() {
        let myColor : UIColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.00)
        rollButton.layer.cornerRadius = 20
        rollButton.layer.borderWidth = 3
        rollButton.layer.borderColor = myColor.cgColor
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "dice-1"), #imageLiteral(resourceName: "dice-2"), #imageLiteral(resourceName: "dice-3"), #imageLiteral(resourceName: "dice-4"), #imageLiteral(resourceName: "dice-5"), #imageLiteral(resourceName: "dice-6")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }

}

