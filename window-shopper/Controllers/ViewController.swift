//
//  ViewController.swift
//  window-shopper
//
//  Created by Jerry Lai on 2021-01-25.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var wageText: CurrencyTextField!
    
    @IBOutlet weak var itemPrice: CurrencyTextField!
    
    @IBOutlet weak var hourLbl: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcBtn
        itemPrice.inputAccessoryView = calcBtn
        
        hoursLabel.isHidden = true
        hourLbl.isHidden = true
        
    }
    
    @objc func calculate(){
        if let wageTxt = wageText.text, let priceTxt = itemPrice.text{
            if let wage = Double(wageTxt), let price=Double(priceTxt){
                view.endEditing(true)
                hoursLabel.isHidden = false
                hourLbl.isHidden = false
                hourLbl.text = "\(Wage.getHours(wage: wage, price: price))"
            }
        }
    }
    
    
    @IBAction func onClearBtnPressed(_ sender: Any) {
        hourLbl.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        itemPrice.text = ""
    }
    

}

