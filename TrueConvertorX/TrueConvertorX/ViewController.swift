//
//  ViewController.swift
//  TrueConvertorX
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

var firstBackground = "white"

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewMain: UIView!
    
    @IBOutlet weak var lblTopText: UILabel!
    
    @IBOutlet weak var lblMiddletext: UILabel!
    
    @IBOutlet weak var btnButton: UIButton!
    
    @IBOutlet weak var lblBottomText: UILabel!
    
    
    @IBAction func btnNext(_ sender: Any) {
    }
    
    @IBAction func btnChangeWhite(_ sender: Any) {
        viewMain.backgroundColor = UIColor.white
        firstBackground = "white"
        colorChangeDefault()
    }
    
    @IBAction func btnChangeLBlue(_ sender: Any) {
        viewMain.backgroundColor = UIColor.cyan
        firstBackground = "cyan"
        colorChangeDefault()
    }
    
    @IBAction func btnChangeDBlue(_ sender: Any) {
        viewMain.backgroundColor = UIColor.blue
        firstBackground = "blue"
        colorChange()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func colorChange(){
        lblTopText.textColor = UIColor.cyan
        lblMiddletext.textColor = UIColor.cyan
        btnButton.setTitleColor(.cyan, for:.normal)
        lblBottomText.textColor = UIColor.cyan
    }
    
    func colorChangeDefault(){
        lblTopText.textColor = UIColor.black
        lblMiddletext.textColor = UIColor.black
        btnButton.setTitleColor(.blue, for:.normal)
        lblBottomText.textColor = UIColor.black
    }
    
    
}

