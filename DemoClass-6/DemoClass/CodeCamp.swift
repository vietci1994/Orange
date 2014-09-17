//
//  CodeCamp.swift
//  DemoClass
//
//  Created by Ci Viet on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation

class CodeCamp: ConsoleScreen {
    var intArr: [Int] = [21,22,32,424,12,32,21,32,22]
    
    var intCompArr: [Complex] = [Complex(real: 1, imagine: 3),
    Complex(real: 2, imagine: 4),
    Complex(real: 1, imagine: 5),
    Complex(real: 2, imagine: 3),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testAverage()
        self.testArrangeEventVSOdd()
        self.testTautologic()
        testComplexAverage()
        
    }
    func testAverage() {
        var resultAverage = self.intArr.average()
        writeln("The result: \(resultAverage)")
    }
    
    func testTautologic() {
        writeln("___________")
        writeln("Tautologic: ")
        intArr.tautologic{$0 == $1}
        for i in intArr {
            writeln(" \(i)")
        }
    }
    func testArrangeEventVSOdd() {
        writeln("_______")
        writeln("ArrangeEventVsOdd: ")
        intArr.arrangeEventVSOdd()
        for i in intArr {
            writeln("\(i)")
        }
    }
    func testComplexAverage() {
        writeln("__________")
        writeln("Complex Average")
        var resultCompAve = self.intCompArr.complexAverage()
        writeln("The result: \(resultCompAve)")
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



