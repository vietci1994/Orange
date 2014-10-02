//
//  Pendulum.swift
//  UIViewControls
//
//  Created by Ci Viet on 10/2/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Pendulum: UIViewController {
    var _timer: NSTimer?
    var pendulum: UIImageView?
    var _slider: UISlider?
    let MAX_ANGLE = M_PI_4 * 0.5
    var _angel: Double!
    var _angelDelta: Double!
    var _switch: UISwitch?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        //var size: CGSize = self.pendulum.bounds.size
        pendulum = UIImageView(image: UIImage(named: "pendulum.png"))
        self.pendulum?.layer.anchorPoint = CGPointMake(0.5, 0)
        self.pendulum?.frame = CGRectMake((self.view.bounds.size.width - 37) * 0.5, 20, 37, 296)
        self.view.addSubview(pendulum!)
        _angel = 0.0
        _angelDelta = 0.05
        
        _switch = UISwitch()
        _switch?.center = CGPoint(x: 23, y: 479)
        _switch?.addTarget(self, action: "startStopAnimation:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(_switch!)
        
        _slider = UISlider()
        _slider?.frame = CGRect(x: self.view.bounds.width - 300, y: self.view.bounds.height - 200, width: 200, height: 40)
        _slider?.addTarget(self, action: "changeAngel:", forControlEvents: UIControlEvents.ValueChanged)
        view.addSubview(_slider!)
    }
    func startStopAnimation(_switch: UISwitch) {
        if _switch.on {
            self.startAnimation()
        }
        else {
            _timer?.invalidate()
        }
    }
    func startAnimation() {
        _timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "animatePendulum", userInfo: nil, repeats: true)
        _timer?.fire()

    }
    func animatePendulum() {
        _angel = _angel + _angelDelta
        if (_angel > MAX_ANGLE) | (_angel < -MAX_ANGLE) {
            _angelDelta = -_angelDelta
        }
        self.pendulum!.transform = CGAffineTransformMakeRotation(CGFloat(_angel))
        NSLog("%3.2f - %3.2f", self.pendulum!.center.x  , self.pendulum!.center.y)
        NSLog("%3.2f", _angel)
        
    }
    func changeAngel(_slider: UISlider) {
        self.pendulum?.transform = CGAffineTransformMakeRotation(CGFloat(MAX_ANGLE) * (CGFloat(_slider.value)))
    }
    
}
