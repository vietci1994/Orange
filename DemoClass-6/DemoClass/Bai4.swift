//
//  Bai4.swift
//  DemoClass
//
//  Created by Ci Viet on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array {
    mutating func arrangeEventVSOdd() {
        for var i = 0;i<self.count;i++ {
            for var j = self.count - 1; j >= i; j-- {
                if(self[i] as Int % 2 == 1 && self[j] as Int % 2 == 0) {
                    let temp = self[i]
                    self[i] = self[j]
                    self[j] = temp
                }
            }
        }
    }

}