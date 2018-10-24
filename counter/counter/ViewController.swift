//
//  ViewController.swift
//  counter
//
//  Created by Joel Vangente on 20/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn_count: UIButton!
    @IBOutlet weak var txtTotaltime: UILabel!
    @IBOutlet weak var txtHour: UILabel!
    @IBOutlet weak var txtMinute: UILabel!
    @IBOutlet weak var txtSecond: UILabel!
    
    var count = 300000
    var timer = Timer()
    var counting = false
    var countM = 0
    var countS = 0
    var countH = 0

    
    @IBOutlet weak var stackview: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnCount(_ sender: Any) {
        if counting{
            btn_count.setTitle("Start counting", for: .normal)
            timer.invalidate()
            counting = false
            
        }else if !counting{
            btn_count.setTitle("Stop counting", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(t_Count), userInfo: nil, repeats: true)
            counting = true
        }
        
        
    }
    
    func calcT(){
        if count > 60{
            txtSecond.text = String(count)
        }else if count >= 60{
            countM = count / 60
            countS = count % 60
            txtMinute.text = String(countM)
            txtSecond.text = String(countS)
            
        }
    }
    
    
    @objc func t_Count(){
        count += 1
    }
}

