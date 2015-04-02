//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {

    
    
    var blueViewLeftTopCornor = UIView()
    var blueViewRightTopCornor = UIView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
       
      
        let viewsDictionary = ["sizebVLTC":blueViewLeftTopCornor,"sizebVRTC":blueViewLeftTopCornor]
        
       //Sizing of View
        let view1_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[sizebVLTC(50)]", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        
        let view1_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[sizebVLTC(50)]", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        blueViewRightTopCornor.addConstraints(view1_constraint_H)
        blueViewRightTopCornor.addConstraints(view1_constraint_V)
        
        //Atributes of View
        blueViewRightTopCornor.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueViewRightTopCornor.backgroundColor = UIColor.blackColor()
        
        
        //Positioning of view
        let centerXRule = NSLayoutConstraint(item: blueViewRightTopCornor, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: -135)
        
        let centerYRule = NSLayoutConstraint(item: blueViewRightTopCornor, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1, constant: 65)
        
        self.view.addSubview(blueViewRightTopCornor)
        self.view.addConstraints([centerXRule, centerYRule])
        
        
        
        
        //Sizing of View
//        let view1_constraint_H1:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[sizebVRTC(50)]", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
//        
//        let view1_constraint_V1:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[sizebVRTC(50)]", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
//        
//        blueViewLeftTopCornor.addConstraints(view1_constraint_H1)
//        blueViewLeftTopCornor.addConstraints(view1_constraint_V1)
        
        blueViewLeftTopCornor.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueViewLeftTopCornor.backgroundColor = UIColor.blueColor()
        blueViewLeftTopCornor.layer.borderWidth = 8
        
        let centerXRule1 = NSLayoutConstraint(item: blueViewLeftTopCornor, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        
        let centerYRule1 = NSLayoutConstraint(item: blueViewLeftTopCornor, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1, constant: 65)
        
        self.view.addSubview(blueViewLeftTopCornor)
        self.view.addConstraints([centerXRule1, centerYRule1])
        
        
        
        
        
        
        
        
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
