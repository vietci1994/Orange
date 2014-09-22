//
//  FlyingBird.swift
//  UiViewControls
//
//  Created by Ci Viet on 9/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class FlyingBird: UIViewController {
    var bird: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        bird = UIImageView()
        let size: CGFloat = 60
        bird?.frame = CGRect(x: 320,y: 480, width: size, height: size)
        bird?.image = UIImage(named: "bird02.png")
        self.view.addSubview(bird!)
        
        let duration = 2.0
        let delay = 1.0
        let options = UIViewAnimationOptions.CurveEaseInOut
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            self.view.backgroundColor = UIColor.yellowColor()
            self.bird?.frame = CGRectMake(320-200, 480-200, size, size)
        }, completion: nil)
        
        
    
        }
    }
    


