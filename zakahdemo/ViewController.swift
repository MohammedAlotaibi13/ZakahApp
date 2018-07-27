//
//  ViewController.swift
//  zakahdemo
//
//  Created by محمد عايض العتيبي on 12/10/1439 AH.
//  Copyright © 1439 code schoole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK : Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var total: UITextField!
   

    // MARK : Action
    @IBAction func caculate(_ sender: Any) {
        // 1- Know the minumem amount of money to accept zakah
        let minAmoutn = 13330
        // 2- declear the nasap
        let nasap = 40
        var input = Int(total.text!)
        // 3- compare between user input and minum amount
        if input == nil {//this prevent app from crash if user press button and textfield is empty
            print("nil")
            label.text = ""
        } else {
      
            if input! <= minAmoutn {
                label.text = "ليس فيها زكاة"
            } else {
                var zakah =  input! / nasap
                label.text = "زكاتك تساوي \(zakah)"
            }
        }
        }
        
    
    
}

