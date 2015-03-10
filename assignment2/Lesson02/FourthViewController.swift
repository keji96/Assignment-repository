//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit



class FourthViewController: UIViewController {
    
    @IBOutlet weak var inputFieldFib: UITextField!
    
    @IBOutlet weak var outputFieldFib: UILabel!
    
    @IBAction func calculateFib(sender: AnyObject) {
        
    
        var fibOutput = fibClass()
        outputFieldFib.text = fibOutput.fibFunc(inputFieldFib.text)
        
    }


 class fibClass {

    func fibFunc(inputNumber: String) -> String{
        
        
        var bigphi = (1 + pow(5.0, 0.5))/2
        var littlephi = (1 - pow(5.0, 0.5))/2  
       
        
        
        var textConversion:Int? = inputNumber.toInt()
        
        if textConversion == nil {
          textConversion = 0
            
        } else {
            var textConversion:Int? = inputNumber.toInt()
        }
        
        var fibNum = Double(textConversion!)
        
        
            var fibnumber = (pow(bigphi,fibNum) + pow(littlephi, fibNum))/pow(5.0,0.5)
        
            let numberOfPlaces = 0.0
            let multiplier = pow(10.0, numberOfPlaces)
            let roundedFib = round(fibnumber * multiplier) / multiplier
            
            let roundedFibText = roundedFib.description
            return roundedFibText
     
    }
    
  }




    

    func shakeView(){
        var shake:CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        var from_point:CGPoint = CGPointMake(inputFieldFib.center.x - 5, inputFieldFib.center.y)
        var from_value:NSValue = NSValue(CGPoint: from_point)
        
        var to_point:CGPoint = CGPointMake(inputFieldFib.center.x + 5, inputFieldFib.center.y)
        var to_value:NSValue = NSValue(CGPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        inputFieldFib.layer.addAnimation(shake, forKey: "position")
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
}
