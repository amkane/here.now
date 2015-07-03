//
//  ViewController.swift
//  here.now.b
//
//  Created by Alex Kane on 6/22/15.
//  Copyright (c) 2015 Alex Kane. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var button: UIButton!
    var user: PFObject?
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBAction func button(sender: UIButton) {
        self.view.layoutIfNeeded()
        
        if bottomConstraint.constant < 100 {
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.text.alpha = 0
            })
            UIView.animateWithDuration(1, delay: 0, options: nil, animations: { () -> Void in
                self.bottomConstraint.constant = 300
                self.button.backgroundColor = UIColor(white: 1, alpha: 0.8)
                self.view.layoutIfNeeded()
                }) { (_) -> Void in
                let removeInstallation = PFInstallation.currentInstallation()
                    removeInstallation.channels = []
                    removeInstallation.saveInBackgroundWithBlock(nil)
            }
        } else {
            let currentInstallation = PFInstallation.currentInstallation()
            
            currentInstallation.channels = ["global"]
            currentInstallation.saveInBackgroundWithBlock(nil)
            
            UIView.animateWithDuration(1, delay: 0, options: nil, animations: { () -> Void in
                self.bottomConstraint.constant = 10
                self.view.layoutIfNeeded()
                self.button.backgroundColor = UIColor(white: 1, alpha: 0.2)
                }) { (_) -> Void in
                    UIView.animateWithDuration(1, animations: { () -> Void in
                        self.text.alpha = 1.0
                    })
            }
        }
        
        
        
    }
    
    
    
    
    @IBAction func buttenPressed(sender: UIButton) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bottomConstraint.constant = 300
        self.button.layer.cornerRadius = 6
        //
        //        var query = PFQuery(className: "User")
        //        query.whereKey("username", equalTo: "Alex")
        //        query.findObjectsInBackgroundWithBlock { (objects, error) -> Void in
        //
        //            //(sign up)
        //            var user = PFObject(className: "User")
        //            user.saveInBackgroundWithBlock(nil)
        //            self.user = user
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //         button.setTitle("Be Here Now", forState: UIControlState.Highlighted)
        //         button.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        //         button.addTarget(self, action: "loginButtonPressed", forControlEvents: UIControlEvents.TouchUpInside)
        //         button.addTarget(self, action: "printUserName", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        //            // Get list of updates
        //            self.getAllUpdates()
        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    }
    
    //    func loginButtonPressed() {
    //
    //
    //
    
    //
    ////        UIView.animateWithDuration(3, animations: {() -> Void in
    ////            self.button.frame = CGRect(x: self.button.frame.origin.x, y: self.button.frame.origin.y + 300, width: self.button.frame.width, height: self.button.frame.height)
    ////        })
    //    }
    
    
    //    var newConstraint = NSLayoutConstraint(item: button, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1.0, constant: self.view.frame.width)
    //
    //    // 2
    //    UIView.animateWithDuration(1.0, delay: 0.0, options: .CurveEaseOut , animations: {
    //    self.view.removeConstraint(self.leadingConstraint)
    //    self.view.addConstraint(newConstraint)
    //    self.view.layoutIfNeeded()
    //    }, completion: nil)
    //
    //    // 3
    //    leadingConstraint = newConstraint
    //}
    //
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}





