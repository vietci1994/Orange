//
//  Mario.swift
//  UIViewControls
//
//  Created by Trinh Minh Cuong on 9/29/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Mario: UIViewController {
    var _timerTap: NSTimer?
    var isTop: Bool!
    var mario: UIImageView?
    var city1, city2, city3, city4: UIImageView?
    var _timer: NSTimer?
    var viewHeight: Double = 0.0
    var moveX = 20
    let cityWidth: Double = 1498
    let cityHeight: Double = 400
    var velY: Double = 0.0 // van toc
    var accY: Double = 0.05 // Gia toc
    var y: Double = 0
    var marioX: Double!
    var marioY: Double!
    var box: UIImageView?


    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        let viewSize = self.view.bounds.size
        viewHeight = Double(viewSize.height) - 60
        box = UIImageView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        box!.center = CGPoint(x: viewSize.width - 20 , y: viewSize.height - 90)
        box!.image = UIImage(named: "box.png")
        
        self.view.addSubview(box!)
        
        city1 = UIImageView(frame: CGRect(x: 0, y: viewHeight - cityHeight, width: cityWidth, height: cityHeight))
        city1!.image = UIImage(named: "city1.png")
        self.view.addSubview(city1!)
       /*
        city2 = UIImageView(frame: CGRect(x: cityWidth, y: viewHeight - cityHeight, width: cityWidth, height: cityHeight))
        city2!.image = UIImage(named: "city2.png")
        self.view.addSubview(city2!)
        
        city3 = UIImageView(frame: CGRect(x: cityWidth * 2, y: viewHeight - cityHeight, width: cityWidth, height: cityHeight))
        city3!.image = UIImage(named: "city3.png")
        self.view.addSubview(city3!) */
        
        city4 = UIImageView(frame: CGRect(x: cityWidth, y: viewHeight - cityHeight, width: cityWidth, height: cityHeight))
        city4!.image = UIImage(named: "city1.png")
        self.view.addSubview(city4!)

        
        mario = UIImageView(frame: CGRect(x: 0, y: 0, width: 65, height: 102))
        mario?.center = CGPoint(x: viewSize.width * 0.5, y: CGFloat(viewHeight) - 10 - mario!.bounds.size.height * 0.5)
        //marioX = Double(self.mario!.center.x)
        //marioY = Double(self.mario!.center.y)
        // Phải câú hình để UIImageView nhận tương tác đa chạm. Bình thường
        mario!.userInteractionEnabled = true
        mario!.multipleTouchEnabled = true
        
        mario!.animationImages = [
            UIImage(named: "1.png"),
            UIImage(named: "2.png"),
            UIImage(named: "3.png"),
            UIImage(named: "4.png"),
            UIImage(named: "5.png"),
            UIImage(named: "6.png"),
            UIImage(named: "7.png"),
            UIImage(named: "8.png")
        ]
        mario!.animationDuration = 1.0
        self.view.addSubview(mario!)
        mario!.startAnimating()
        
        // Gắn bộ nhận dạng tương tác chạm vào mario
        let tap = UITapGestureRecognizer(target: self, action: "tapOnMario")
        self.view.addGestureRecognizer(tap)
        
        self._timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "runCity", userInfo: nil, repeats: true)
        self._timer?.fire()
    }
    
    func runCity() {
        
        city1!.center = CGPoint(x: city1!.center.x - CGFloat(moveX), y: city1!.center.y)
       /* city2!.center = CGPoint(x: city2!.center.x - CGFloat(moveX), y: city2!.center.y)
        city3!.center = CGPoint(x: city3!.center.x - CGFloat(moveX), y: city3!.center.y) */
        city4!.center = CGPoint(x: city4!.center.x - CGFloat(moveX), y: city4!.center.y)
        
        if city1!.frame.origin.x + CGFloat(cityWidth) < 0 {
            city1!.frame = CGRect(x: Double(city4!.frame.origin.x) + cityWidth, y: Double(city1!.frame.origin.y), width: cityWidth, height: cityHeight)
            println("move 1")
        }
        if city4!.frame.origin.x + CGFloat(cityWidth) < 0 {
            city4!.frame = CGRect(x: Double(city1!.frame.origin.x) + cityWidth, y: Double(city1!.frame.origin.y), width: cityWidth, height: cityHeight)
            println("move 2")
        }
        
        
    }
    
    func tapOnMario() {
        println("tap")
        UIView.animateWithDuration(0.5, animations: {
            self.mario!.center = CGPoint(x: self.mario!.center.x, y: self.mario!.center.y - 70)
            }, completion: { finished in
                UIView.animateWithDuration(0.2, animations: {
                    self.mario!.center = CGPoint(x: self.mario!.center.x, y: self.mario!.center.y + 70)
                }, completion: nil)
        })
        
    }
    func tapTap() {
        
        
        
            }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        _timer?.invalidate()
        _timer = nil
        
    }
}
