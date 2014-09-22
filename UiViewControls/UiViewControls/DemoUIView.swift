//
//  DemoUIView.swift
//  UiViewControls
//
//  Created by Ci Viet on 9/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class DemoUIView: UIViewController {
   var smallView: UIView? // Khai bao bien instance
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Frame va bounds co the khac nhau khi xoay hinh
        
        //Frame khi xoay thi se thay doi width va height
        //Con bound thi van giu nguyen
        let string = String(format: "width = %3.2f, height = %3.2f", smallView!.bounds.width, smallView!.bounds.height )
        println(string)

    }
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        let view = UIView(frame: CGRect(x: 10, y: 100, width: 60, height: 60))
        view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view) // self.view la cha cua view
        
        self.smallView = UIView()
        self.smallView!.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        self.smallView!.center = CGPoint(x: 30, y: 30)
        self.smallView!.backgroundColor = UIColor.yellowColor()
        self.smallView!.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        view.addSubview(smallView!) // view la cha cua smallView
        
        let smallerView = UIView()
        smallerView.bounds = CGRect(x: 0, y: 0, width: 15, height: 15)
        smallerView.center = CGPoint(x: 15, y: 15)
        smallerView.backgroundColor = UIColor.brownColor()
        
        smallView!.addSubview(smallerView)
        
        // Add button
        let button = UIButton(frame: CGRect(x: 150, y: 100, width: 100, height: 40))
        button.backgroundColor = UIColor.grayColor()
        button.setTitle("Remove", forState: UIControlState.Normal)
        button.addTarget(self, action: "removeRect:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
            }
        func removeRect(button: UIButton) {
            self.smallView!.removeFromSuperview()
            
    }

    
}
