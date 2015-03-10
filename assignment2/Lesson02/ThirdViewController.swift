//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

        @IBOutlet weak var inputEvenOddNumber: UITextField!
    
        @IBOutlet weak var outputFieldOddEven: UILabel!
    
    @IBAction func calculateEvenOdd(sender: AnyObject) {
        
       let inputEvenOddInt:Int? = inputEvenOddNumber.text.toInt()
        
   
        if inputEvenOddInt == nil{
            shakeView()
        
        }else{
    
            let modinputevenodd = inputEvenOddInt! % 2
            
            
            if modinputevenodd == 0 {
            outputFieldOddEven.text = "It's even"
            }else {
            outputFieldOddEven.text = "It's odd"
            }
        }
     }
    

    
    func shakeView(){
        var shake:CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        var from_point:CGPoint = CGPointMake(inputEvenOddNumber.center.x - 5, inputEvenOddNumber.center.y)
        var from_value:NSValue = NSValue(CGPoint: from_point)
        
        var to_point:CGPoint = CGPointMake(inputEvenOddNumber.center.x + 5, inputEvenOddNumber.center.y)
        var to_value:NSValue = NSValue(CGPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        inputEvenOddNumber.layer.addAnimation(shake, forKey: "position")
    }

    
    
    
    
    
    
    
    
    
    
    
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
