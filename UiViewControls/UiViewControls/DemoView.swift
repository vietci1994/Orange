//
//  DemoView.swift
//  UiViewControls
//
//  Created by Ci Viet on 9/22/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class DemoView: UIViewController {
    var ci: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        ci = UIView(frame: CGRectMake(50, 100, 60, 60))
        
        ci?.backgroundColor = UIColor.redColor()
        var options = UIViewAnimationOptions.Repeat
        
        UIView.animateWithDuration(1, delay: 0, options: options, animations: {
            self.ci?.backgroundColor = UIColor.yellowColor()
            self.ci?.frame = CGRectMake(50, 100, 60, 60)
            self.ci?.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
            
            
        }, completion: nil)
        view.addSubview(ci!)
    }
    
    
    

}
