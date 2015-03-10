//
//  ViewController.swift
//  Lesson01
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let password = "pass"
    
    @IBOutlet weak var emailBox: UITextField!
    
    @IBOutlet weak var passwordBox: UITextField!
    
    //This section shakes the password box if password entered is wrong
    func shakeView(){
        var shake:CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        var from_point:CGPoint = CGPointMake(passwordBox.center.x - 5, passwordBox.center.y)
        var from_value:NSValue = NSValue(CGPoint: from_point)
        
        var to_point:CGPoint = CGPointMake(passwordBox.center.x + 5, passwordBox.center.y)
        var to_value:NSValue = NSValue(CGPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        passwordBox.layer.addAnimation(shake, forKey: "position")
    }

    
   //This section opens the goal-info view controller. The goal-info viewcontroller is
    @IBAction func loginBox(sender: AnyObject) {
        if passwordBox.text == password {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("select") as UIViewController
            //self.presentViewController(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
        }
        else {
            shakeView()
            passwordBox.text=""
        
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

