//
//  ViewControllerSecond.swift
//  TrueConvertorX
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {
    
    @IBOutlet var viewSecond: UIView!
    
    @IBOutlet weak var lblHeadText: UILabel!
    
    @IBOutlet weak var txtUserInput: UITextField!
    
    @IBOutlet weak var lblOutput: UILabel!
    
    
    func checkBackground(){
        if firstBackground == "White"{
            viewSecond.backgroundColor = UIColor.white
        }else if firstBackground == "cyan"{
            viewSecond.backgroundColor = UIColor.cyan
        }else {
            viewSecond.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func btnCMtoIN(_ sender: Any) {
    }
    
    @IBAction func btnCtoF(_ sender: Any) {
    }
    
    @IBAction func btnSTtoKG(_ sender: Any) {
    }
    
    @IBAction func btnINtoCM(_ sender: Any) {
    }
    
    @IBAction func btnFtoC(_ sender: Any) {
    }
    
    @IBAction func KGtoST(_ sender: Any) {
    }
    
    @IBAction func btnChangeWhite(_ sender: Any) {
    }
    
    @IBAction func btnChangeBlue(_ sender: Any) {
    }
    
    @IBAction func btnChangeLightBlue(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkBackground()
        // Do any additional setup after loading the view.
    }
 

}
