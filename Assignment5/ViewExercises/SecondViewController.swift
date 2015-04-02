//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        var blueViewRightTopCornor = UIView(frame: CGRect(x: 0, y: 65, width: 20, height: 20))
        blueViewRightTopCornor.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueViewRightTopCornor)
        
        var blueViewLeftTopCornor = UIView(frame: CGRect(x: 300, y: 65, width: 20, height: 20))
        blueViewLeftTopCornor.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueViewLeftTopCornor)
        
        var blueViewLeftBottomCornor = UIView(frame: CGRect(x: 0, y: 505, width: 20, height: 20))
        blueViewLeftBottomCornor.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueViewLeftBottomCornor)
        
        var blueViewRightBottomCornor = UIView(frame: CGRect(x: 300, y: 505, width: 20, height: 20))
        blueViewRightBottomCornor.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueViewRightBottomCornor)
        
        
        
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
