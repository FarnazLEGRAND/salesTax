//
//  ViewController.swift
//  salesTax
//
//  Created by Farnaz Rismanchian on 29/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var beforTaxPrice : Float = 0
    var salesTaxRate: Float = 0

    @IBOutlet weak var afterTaxPriceTextFied: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforTaxPriceChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
                beforeTaxPrice = value
            }else{
                beforeTaxPrice = 0
            }
                
        }
    
    @IBAction func saleTaxRateChanged(_ sender: UITextField) {
        if let value = Float(sender.text!){
                salesTaxRate = value
            }else{
                salesTaxRate = 0
            }
        }
        
    @IBOutlet weak var CalculateButtonPressed(_ sender: Any) {
        
        let salesTax = beforeTaxPrice * salesTaxRate / 100
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        print(afterTaxPrice)
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
    }
    
}
