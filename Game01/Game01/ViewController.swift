//
//  ViewController.swift
//  Game01
//
//  Created by Joel Vangente on 07/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnTOscreen2(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "secondScreen") as! ViewControllerSecond
        self.present(next, animated: true, completion: nil)
       
    }
    

}

