//
//  Bai1.swift
//  DemoClass
//
//  Created by Ci Viet on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array {
    func average() -> Double {
        let n = self.count
        var total: Int = 0
        for var i = 0; i < n;++i {
            total += (self[i] as Int)
        }
        var average: Double = Double(total/n)
        return average
    }
}