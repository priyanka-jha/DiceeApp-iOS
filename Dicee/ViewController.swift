//
//  ViewController.swift
//  Dicee
//
//  Created by Priyanka Jha on 12/08/19.
//  Copyright © 2019 Priyanka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var dice1: UIImageView!
    
    @IBOutlet weak var dice2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
    }

    
    @IBAction func rollDices(_ sender: UIButton) {
   
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        dice1.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    

}

