//
//  Bai2.swift
//  DemoClass
//
//  Created by Ci Viet on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array {
    mutating func tautologic(isOrderedBefore: (T, T) -> Bool) {
        
        
        for var i = 0;i<self.count;i++ {
            for var j = i+1;j<self.count;j++ {
                if isOrderedBefore(self[i], self[j]) {
                    
                    self.removeAtIndex(i)
                }
            }
            
        }
        
    }
}