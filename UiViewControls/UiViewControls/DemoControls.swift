//
//  DemoControls.swift
//  UiViewControls
//
//  Created by Ci Viet on 9/19/14.
//  Copyright (c) 2014 CiViet. All rights reserved.
//

import UIKit

class DemoControls: UIViewController, UITextFieldDelegate {
    var label: UILabel?
    var image: UIImageView?
    var slider: UISlider?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        label = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 40))
        label!.text = "Hello World"
        label!.backgroundColor = UIColor.brownColor()
        label!.textAlignment = NSTextAlignment.Center
       // label.transform = CGAffineTransformMakeScale(2, 2)
        self.view.addSubview(label!)
        
        
        let txtName = UITextField(frame: CGRect(x: 10, y: 70, width: 180, height: 40))
        txtName.placeholder = "Enter your name"
        txtName.borderStyle = UITextBorderStyle.Line
        txtName.delegate = self
        txtName.keyboardType = UIKeyboardType.WebSearch
        self.view.addSubview(txtName)
        
        
        //Switch button
        let airPlaneMode = UISwitch()
        airPlaneMode.center = CGPoint(x: 150, y: 150)
        airPlaneMode.addTarget(self, action: "airPlaneModeChance:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(airPlaneMode)
        
        // Slider
        
        slider = UISlider(frame: CGRect(x: 10, y: 200, width: 200, height: 40))
        slider!.addTarget(self, action: "onSliderChance:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(slider!)
        slider!.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        
        // Image
        image = UIImageView(frame: CGRect(x: 10, y: 240, width: 200, height: 200))
        image!.image = UIImage(named: "girl_with_autumn_leaves-wallpaper-2880x1800.jpg")
        self.view.addSubview(image!)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField.isFirstResponder() {
            textField.resignFirstResponder()
        }
        return true
    }
    func airPlaneModeChance(switchButton: UISwitch) {
        if switchButton.on {
            label!.text = "On"
        } else {
            label!.text = "Off"
        }
    }
    func onSliderChance(slider: UISlider) {
        label!.text = String(format: "%1.2f", slider.value)
    }
}
