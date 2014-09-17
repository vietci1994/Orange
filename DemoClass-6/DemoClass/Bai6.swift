//
//  Bai6.swift
//  DemoClass
//
//  Created by Ci Viet on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array{
    func complexAverage() -> String {
        let n = self.count
        var total: Complex = Complex(real: 0, imagine: 0)
        for var i = 0;i<self.count;i++ {
            total = total + (self[i] as Complex)
        }
        var resultReal = total.real
        var resultIma = total.imagine
        var compAverage: Complex = total /+ Double(n)
        return compAverage.description
    }
}
