//
//  PropertyDemo.swift
//  DemoClass
//
//  Created by techmaster on 9/5/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
// Phần này học về Computed Property, Property Observer

import UIKit

class Solider {
    var isEnemy: Bool
    var name: String
    var blood: Int = 50
    var armour: Int = 50 {
        willSet(newArmour) {
            if newArmour < 0 {
                println("Armour value is negative")
                self.armour = 0
            } else if newArmour > 100{
                println("Armour value is too high")
                self.armour = 100
            }
        }
        
        didSet {
            switch self.armour {
            case 0...30:
                println("Becareful when fighting")
            case 31...60:
                println("Ready to fight")
            case 61...80:
                println("Your armour is good, let's kill")
            case 81...100:
                println("Please unload some armour to go faster")
            default:
                println("Armour is unknown")
            }
        }
    }
    var weapon: Int = 50
    init (isEnemy: Bool, name: String) {
        self.isEnemy = isEnemy
        self.name = name
    }
    //Computed property
    var health: Int {
        return (self.blood + self.armour + self.weapon) / 3
    }
    
    var description: String {
        var status: String
        switch self.health {
        case 0...10:
            status = "almost dies"
        case 11...30:
            status = "too weak"
        case 31...40:
            status = "needs more blood, armour and weapon"
        case 41...60:
            status = "ready to fire"
        case 61...70:
            status = "is strong"
        case 71...85:
            status = "is very strong"
        case 86...100:
            status = "is super strong, let's destroy everything"
        default:
            status = "is invisible mode"
        }
            
        return "\(self.name) is \(status)"
    }
}
class PropertyDemo: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoSolider()
    }
    
    func demoSolider() {
        var batman = Solider (isEnemy: true, name: "Batman")
        batman.blood = 80
        batman.armour = 40
        batman.weapon = 15
        self.inRa(batman.description)
    }
   
}
