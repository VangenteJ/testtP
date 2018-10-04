//
//  ViewController.swift
//  Dice Roll Game
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblDiceresum: UILabel!
    
    @IBOutlet weak var imgDice1: UIImageView!
    
    @IBOutlet weak var imgDice2: UIImageView!
    
    var sum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnRoll(_ sender: Any) {
        lblDiceresum.text = String(sum)
        let dice1roll = arc4random_uniform(6) + 1
        let dice2roll = arc4random_uniform(6) + 1
        
        imgDice1.image = UIImage(named: "Dice\(dice1roll)")
        imgDice2.image = UIImage(named: "Dice\(dice2roll)")
        
    }
    
    
    
}

