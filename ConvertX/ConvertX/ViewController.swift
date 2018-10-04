//
//  ViewController.swift
//  ConvertX
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

var name = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var outlet: UITextField!
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        if outlet.text != nil{
        name = outlet.text!
        }
        
        if name != "" {
            let nxt = self.storyboard?.instantiateViewController(withIdentifier: "secondScreen") as! SecondViewController
            self.present(nxt, animated: true, completion: nil)
            
        }
        outlet.text = nil
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

