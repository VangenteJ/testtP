//
//  ViewControllerFifth.swift
//  Game01
//
//  Created by Joel Vangente on 07/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewControllerFifth: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnNext(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "firstScreen") as! ViewController
        self.present(next, animated: true, completion: nil)
    }
    
}
