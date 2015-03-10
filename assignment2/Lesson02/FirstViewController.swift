//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
    @IBOutlet weak var ageNameInfoField: UILabel!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    @IBAction func generateTextButton(sender: AnyObject) {
        helloWorldLabel.text = "Hello World"
        
        
        if ageField == nil {
          shakeView()
        } else {ageNameInfoField.text = nameAndAge() + "\r" + driveDrinkVote() + "\r" + driveAndDrinkAndVote()
          }
        
    }
    
    func nameAndAge() -> String {
        let nameAndAgePrint = "Hello \(nameField.text) you are \(ageField.text) years old!"
        return nameAndAgePrint
    }

    func driveAndDrinkAndVote() -> String{
     
        let ageFieldInt:Int? = ageField.text.toInt()
        var legalAllowance = ""
        if ageFieldInt >= 16 && ageFieldInt < 18 {
           legalAllowance = "You can drive"
        } else if ageFieldInt >= 18 && ageFieldInt < 21 {
           legalAllowance = "You can drive and vote"
          } else if ageFieldInt >= 21{
            legalAllowance = "You can drive, vote and drink (but not at the same time)!"
           }else {
            legalAllowance = "You're too young"
            }
        
        return legalAllowance
     }
    
    
    func driveDrinkVote() -> String{
        
        let ageFieldInt:Int? = ageField.text.toInt()
        var legalAllowance = ""
        if ageFieldInt >= 21{
            legalAllowance = "You can drink"
        } else if ageFieldInt >= 18 {
                legalAllowance = "You can vote"
           } else if ageFieldInt >= 16{
                legalAllowance = "You can drive"
        }else {
                legalAllowance = "You're too young"
         }
        
        return legalAllowance
    }
    
    func shakeView(){
        var shake:CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        var from_point:CGPoint = CGPointMake(ageField.center.x - 5, ageField.center.y)
        var from_value:NSValue = NSValue(CGPoint: from_point)
        
        var to_point:CGPoint = CGPointMake(ageField.center.x + 5, ageField.center.y)
        var to_value:NSValue = NSValue(CGPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        ageField.layer.addAnimation(shake, forKey: "position")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
}
