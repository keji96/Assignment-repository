//
//  ViewController.swift
//  MidTERMCalculator
//
//  Created by kevin campbell on 3/25/15.
//  Copyright (c) 2015 kevin campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let prefs = NSUserDefaults.standardUserDefaults()
    var operation = ""
    var isTypingNumber = false
    
    
    @IBOutlet weak var answerDisplay: UITextField!
    
    
    
    @IBAction func clearButton(sender: AnyObject) {
        answerDisplay.text = ""
        
    }
    
    
    @IBAction func allClearButton(sender: AnyObject) {
        let appDomain = NSBundle.mainBundle().bundleIdentifier!
        prefs.removePersistentDomainForName(appDomain)
        answerDisplay.text = ""
        
    }
    
    
    
    @IBAction func plusMinusPressed(sender: UIButton) {
        let floatplusminus = (answerDisplay.text as NSString).doubleValue * -1
        answerDisplay.text = NSString(format: "%.2f", floatplusminus)
        
        
    }
    
    
    
    
    @IBAction func percentPressed(sender: AnyObject) {
        let floatpercent = (answerDisplay.text as NSString).doubleValue/100
        answerDisplay.text = NSString(format: "%.2f", floatpercent)
        
    }
    
    
    
    
    @IBAction func enterednumber(sender: AnyObject) {
        let number = sender.currentTitle!
        answerDisplay.text = answerDisplay.text! + number!
        
    }
    
    
    
    @IBAction func addbuttonPressed(sender: AnyObject) {
        
        var floatnum = (answerDisplay.text as NSString).doubleValue
        prefs.setDouble(floatnum, forKey: "f1")
        answerDisplay.text = ""
        operation = sender.currentTitle!!
        
    }
    
    
    
    @IBAction func equalButtonPressed(sender: AnyObject) {
        
        switch operation{
        case "+":
            if var storedvalue = prefs.stringForKey("f1"){
                var doublesecondnum = (answerDisplay.text as NSString).doubleValue
                var stordouble = (storedvalue as NSString).doubleValue
                var summation = stordouble + doublesecondnum
                answerDisplay.text = NSString(format: "%.2f", summation)
            }
            
            
        case "-":
            if var storedvalue = prefs.stringForKey("f1"){
                var doublesecondnum = (answerDisplay.text as NSString).doubleValue
                var stordouble = (storedvalue as NSString).doubleValue
                var summation = stordouble - doublesecondnum
                answerDisplay.text = NSString(format: "%.2f", summation)
            }
            
        case "X":
            if var storedvalue = prefs.stringForKey("f1"){
                var doublesecondnum = (answerDisplay.text as NSString).doubleValue
                var stordouble = (storedvalue as NSString).doubleValue
                var summation = stordouble * doublesecondnum
                answerDisplay.text = NSString(format: "%.2f", summation)
                
            }
        case "/":
            if var storedvalue = prefs.stringForKey("f1"){
                var doublesecondnum = (answerDisplay.text as NSString).doubleValue
                var stordouble = (storedvalue as NSString).doubleValue
                var summation = stordouble / doublesecondnum
                answerDisplay.text = NSString(format: "%.2f", summation)
            }
            
            
        default:
            answerDisplay.text = "0"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDomain = NSBundle.mainBundle().bundleIdentifier!
        prefs.removePersistentDomainForName(appDomain)
        answerDisplay.text = ""
    }
    
    
    
    
    
    
    
    
    
    
    
}