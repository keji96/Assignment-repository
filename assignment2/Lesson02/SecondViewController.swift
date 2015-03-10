//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var cumulativeSum = 0
    
    @IBOutlet weak var numberInputField: UITextField!
    
    @IBOutlet weak var numberOutputField: UILabel!
    
    @IBAction func addButton(sender: AnyObject) {
        
        let inputFieldInt:Int? = numberInputField.text.toInt()
        if inputFieldInt == nil {
            shakeView()
        } else {
            cumulativeSum = cumulativeSum + inputFieldInt!
            numberOutputField.text = String(cumulativeSum)
          }
    }

     @IBAction func clearButton(sender: AnyObject) {
        
        cumulativeSum = 0
        numberInputField.text = ""
        numberOutputField.text = ""
        
     }
    
  
    func shakeView(){
        var shake:CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        var from_point:CGPoint = CGPointMake(numberInputField.center.x - 5, numberInputField.center.y)
        var from_value:NSValue = NSValue(CGPoint: from_point)
        
        var to_point:CGPoint = CGPointMake(numberInputField.center.x + 5, numberInputField.center.y)
        var to_value:NSValue = NSValue(CGPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        numberInputField.layer.addAnimation(shake, forKey: "position")
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}
