//
//  SecondViewController.swift
//  ConvertX
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        lblShow.text = name
    }

}
