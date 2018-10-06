//
//  ViewControllerSecond.swift
//  TrueConvertorX
//
//  Created by Joel Vangente on 04/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit

var secondBackground = "white"

class ViewControllerSecond: UIViewController {
    
    @IBOutlet var viewSecond: UIView!
    
    @IBOutlet weak var lblHeadText: UILabel!
    
    @IBOutlet weak var txtUserInput: UITextField!
    
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBOutlet weak var btnCm_to_In: UIButton!
    
    @IBOutlet weak var btnC_to_F: UIButton!
    
    @IBOutlet weak var btnST_to_KG: UIButton!
    
    @IBOutlet weak var btnInc_to_CM: UIButton!
    
    @IBOutlet weak var btnF_to_C: UIButton!
    
    @IBOutlet weak var btnKg_to_St: UIButton!
    
    let cm_to_inc_Cons = 0.393701
    let inc_to_cm_Cons = 2.54
    let st_to_kg_Cons = 6.35029
    let kg_to_st_Cons = 0.157473
    
    
    
    
    
    func checkBackground(){
        if firstBackground == "white"{
            viewSecond.backgroundColor = UIColor.white
        }else if firstBackground == "cyan"{
            viewSecond.backgroundColor = UIColor.cyan
        }else {
            viewSecond.backgroundColor = UIColor.blue
            changeTextColor()
        }
    }
    
    func changeTextColor(){
        lblHeadText.textColor = UIColor.cyan
        btnCm_to_In.setTitleColor(.cyan, for:.normal)
        btnC_to_F.setTitleColor(.cyan, for:.normal)
        btnST_to_KG.setTitleColor(.cyan, for:.normal)
        btnInc_to_CM.setTitleColor(.cyan, for:.normal)
        btnF_to_C.setTitleColor(.cyan, for:.normal)
        btnKg_to_St.setTitleColor(.cyan, for:.normal)
        
    }
    
    func changeTextColorDefault(){
        lblHeadText.textColor = UIColor.black
        btnCm_to_In.setTitleColor(.blue, for:.normal)
        btnC_to_F.setTitleColor(.blue, for:.normal)
        btnST_to_KG.setTitleColor(.blue, for:.normal)
        btnInc_to_CM.setTitleColor(.blue, for:.normal)
        btnF_to_C.setTitleColor(.blue, for:.normal)
        btnKg_to_St.setTitleColor(.blue, for:.normal)
    }
    
    
    
    
    
    
    @IBAction func btnCMtoIN(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else {
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = metricCalculation(uI!, Float(cm_to_inc_Cons))
            lblOutput.text = String(format:"%.02f Cm is: %.02f Inc", uI!, output)
        }
        
    }
    
    @IBAction func btnCtoF(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else{
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = temperatureCalcC_to_F(uI!)
            lblOutput.text = String(format:"%.02f C is: %.02f F", uI!, output)
        }
        
    }
    
    @IBAction func btnSTtoKG(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else{
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = metricCalculation(uI!, Float(st_to_kg_Cons))
            lblOutput.text = String(format:"%.02f St is: %.02f Kg", uI!, output)
        }
    }
    
    @IBAction func btnINtoCM(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else{
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = metricCalculation(uI!, Float(inc_to_cm_Cons))
            lblOutput.text = String(format:"%.02f Inc is: %.02f Cm", uI!, output)
        }
    }
    
    @IBAction func btnFtoC(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else{
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = temperatureCalcF_to_C(uI!)
            lblOutput.text = String(format:"%.02f F is: %.02f C", uI!, output)
        }
        
    }
    
    @IBAction func KGtoST(_ sender: Any) {
        
        if txtUserInput.text == ""{
            inValid()
        }else{
            lblOutput.textColor = UIColor.black
            let uInput = txtUserInput!.text
            let uI = Float(uInput!)
            let output = metricCalculation(uI!, Float(kg_to_st_Cons))
            lblOutput.text = String(format:"%.02f Kg is: %.02f St", uI!, output)
        }
    }
    
    
    
    
    
    @IBAction func btnChangeWhite(_ sender: Any) {
        viewSecond.backgroundColor = UIColor.white
        changeTextColorDefault()
        secondBackground = "white"
    }
    
    @IBAction func btnChangeLightBlue(_ sender: Any) {
        viewSecond.backgroundColor = UIColor.cyan
        changeTextColorDefault()
        secondBackground = "cyan"
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnChangeBlue(_ sender: Any) {
        viewSecond.backgroundColor = UIColor.blue
        changeTextColor()
        secondBackground = "blue"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkBackground()
        // Do any additional setup after loading the view.
    }
    
    func metricCalculation(_ uInput: Float, _ constant: Float) -> Float{
        
        let sum = uInput * constant
        
        return sum
    }
    
    func temperatureCalcF_to_C(_ uInput: Float) -> Float{
        
        let sum = (uInput - 32) * 5/9
        
        return sum
    }
    
    func temperatureCalcC_to_F(_ uInput: Float) -> Float{
        
        let sum = uInput * 1.8 + 32
        
        return sum
    }
    
    func inValid(){
        txtUserInput.placeholder = "Please enter a number here"
        lblOutput.text = "Please enter a number above"
        lblOutput.textColor = UIColor.red
    }
 

}
