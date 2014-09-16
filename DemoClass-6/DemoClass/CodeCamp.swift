//
//  CodeCamp.swift
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
    
    
    mutating func tautologic(isOrderedBefore: (T, T) -> Bool) {
       
        
        for var i = 0;i<self.count;i++ {
            for var j = i+1;j<self.count;j++ {
                if isOrderedBefore(self[i], self[j]) {
                    
                    self.removeAtIndex(i)
                }
            }
            
        }
        
    }
    
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

        
    func soccer(number: Int) {
        var resultArr = [MemSoccer]()
        
    }
    
    
}
class CodeCamp: ConsoleScreen {
    var intArr: [Int] = [21,22,32,424,12,32,21,32,22]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testAverage()
        self.testArrangeEventVSOdd()
        self.testTautologic()
        
    }
    func testAverage() {
        var resultAverage = self.intArr.average()
        writeln("The result: \(resultAverage)")
    }
    
    func testTautologic() {
        writeln("___________")
        intArr.tautologic{$0 == $1}
        for i in intArr {
            writeln(" \(i)")
        }
    }
    func testArrangeEventVSOdd() {
        writeln("_______")
        intArr.arrangeEventVSOdd()
        for i in intArr {
            writeln("\(i)")
        }
    }
    func testSoccer() {
        var soccer1 = MemSoccer(name: "Thu mon 1")
        var soccer2 = MemSoccer(name: "Thu mon 2")
        var soccer3 = MemSoccer(name: "Thu mon 3")
        var soccer4 = MemSoccer(name: "Hau ve 1")
        var soccer5 = MemSoccer(name: "Hau ve 2")
        var soccer6 = MemSoccer(name: "Hau ve 3")
        var soccer7 = MemSoccer(name: "Hau ve 4")
        var soccer8 = MemSoccer(name: "Hau ve 5")
        var soccer9 = MemSoccer(name: "Tien dao 1")
        var soccer10 = MemSoccer(name: "Tien dao 2")
        var soccer11 = MemSoccer(name: "Tien dao 3")
        var soccer12 = MemSoccer(name: "Tien dao 4")
        var soccer13 = MemSoccer(name: "Tien dao 5")
        var soccer14 = MemSoccer(name: "Tien ve 1")
        var soccer15 = MemSoccer(name: "Tien ve 2")
        var soccer16 = MemSoccer(name: "Tien ve 3")
        var soccer17 = MemSoccer(name: "Tien ve 4")
    }

}

class MemSoccer {
    var name: String
        init(name: String) {
        self.name = name
        
    }
}

