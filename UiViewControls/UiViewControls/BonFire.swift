//
//  BonFire.swift
//  UiViewControls
//
//  Created by Ci Viet on 9/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class BonFire: UIViewController {
    var fire: UIImageView?
    var label: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fire!.startAnimating()
    }
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.blackColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        fire = UIImageView(frame: CGRect(x: 0, y: 0, width: 420, height: 480))
        fire!.center = CGPoint(x: self.view.bounds.size.width * 0.5, y: self.view.bounds.size.height * 0.5)
        var images: [UIImage] = [UIImage]()
        for i in 1...17 {
            var fileName: String
            if i < 10 {
                fileName = "campfire0\(i).gif"
            }
            else {
                fileName = "campfire\(i).gif"
            }
            images.append(UIImage(named: fileName))
        }
        fire!.animationImages = images
        fire!.animationDuration = 1.5
        fire!.animationRepeatCount = 100
        self.view.addSubview(fire!)
        
        label = UILabel()
        self.label?.text = "Huong oi. Anh yeu em nhieu lam"
        self.view.addSubview(label!)
        self.label?.textColor = UIColor.whiteColor()
        let options = UIViewAnimationOptions.Repeat
        
        UILabel.animateWithDuration(2.0, delay: 1.0, options: options, animations: {
            self.label?.textColor = UIColor.yellowColor()
            self.label?.frame = CGRect(x: 200-55, y: 120, width: 200, height: 40)
        }, completion: nil)
        
        
        
        
        
    }

    
}
