//
//  ViewController.swift
//  slideMenuTest
//
//  Created by Joel Vangente on 13/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadconstrain: NSLayoutConstraint!
    var sideDrop = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func openSidedrop(_ sender: Any) {
        if (sideDrop){
            leadconstrain.constant = 0
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
            
        } else {
            leadconstrain.constant = -140
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        sideDrop = !sideDrop
    }
    
}

