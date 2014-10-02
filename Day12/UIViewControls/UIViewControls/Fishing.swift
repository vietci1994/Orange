//
//  Fishing.swift
//  UIViewControls
//
//  Created by Ci Viet on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Fishing: UIViewController {
    var fish: UIImageView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        for loopNumber in 1...100{
            fish = UIImageView()
            fish?.image = UIImage(named: "Fish3.jpg")
            fish?.frame = CGRect(x: 55, y: 300, width: 50, height: 50)
            view.addSubview(fish!)
            let randomYOffset = CGFloat(drand48() * 150)
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16, y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.repeatCount = Float.infinity
            anim.duration = 5.0
            
            fish!.layer.addAnimation(anim, forKey: "animate position along path")
        }
    
    }
   
}
