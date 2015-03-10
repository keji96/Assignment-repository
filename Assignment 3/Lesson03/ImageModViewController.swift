//
//  ImageModViewController.swift
//  assignment3
//
//  Created by kevin campbell on 3/6/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ImageModViewController: UIViewController {

    
    var imageNameSelector = 0
    @IBOutlet weak var ImageToView: UIImageView!
    
    let imageNames = ["archway.jpg","badboys.jpg","BJ.jpg","bridesmaids.jpg","BWkiss.jpg","cheekKiss.jpg","DandJ.jpg","grinding.jpg","hands.jpg","handsup.jpg","Iffiandjojo.jpg","mifamilia.jpg","mom.jpg","nikev.jpg","overhead.jpg","partyhard.jpg","pictureframe.jpg","prettynic.jpg","shoes.jpg","snuggle.jpg"]
    
    
    @IBAction func viewImageButton(sender: AnyObject) {
    
        imageNameSelector = Int((arc4random_uniform(19)))
        ImageToView.alpha = 0
        ImageToView.image = UIImage(named: imageNames[imageNameSelector])
        UIView.animateWithDuration(3, animations: {self.ImageToView.alpha = 1})
    }
    
    
    
    
    @IBAction func returnToMainPageButton(sender: AnyObject) {
    
    self.dismissViewControllerAnimated(true, completion: nil)
    
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
