//
//  RotationPassthroughNavigationController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/11/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class RotationPassthroughNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var redView = UIView(frame: CGRect(x: 200 , y: 200 , width: 640, height: 640))
        redView.backgroundColor = UIColor.redColor()
        
        
        
        // Do any additional setup after loading the view.
    }

    override func shouldAutorotate() -> Bool {
        return self.visibleViewController.shouldAutorotate()
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return self.visibleViewController.supportedInterfaceOrientations()
    }
}
