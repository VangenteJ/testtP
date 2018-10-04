//
//  ViewController.swift
//  warGame
//
//  Created by Joel Vangente on 03/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var lblPlayerScore: UILabel!
    
    @IBOutlet weak var lblCPUScore: UILabel!
    
    var playerCount = 0
    var cpuCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var c = 0
    @IBAction func btnDealTapper(_ sender: Any)
    {
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImage.image = UIImage(named: "card\(leftRandomNumber)")
        rightImage.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber
        {
            playerCount += 1
            lblPlayerScore.text = String(playerCount)
        }else if leftRandomNumber < rightRandomNumber
        {
            cpuCount += 1
            lblCPUScore.text = String(cpuCount)
        }
    }
    


}

