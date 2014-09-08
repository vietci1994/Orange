//
//  ProtocolDelegateDemo.swift
//  DemoClass
//
//  Created by techmaster on 9/5/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
func fun() {
    
}
@objc protocol Artistic {
    func sing(song: String)
    func blowHarmonica()
    func playGuitar()
}

@objc protocol Athletic {
    func playFootball() -> String
    func swim() -> String
}

class TechMasterStudent: Person, Athletic {
    func playFootball() -> String {
        return "\(self.name) plays footbal"
    }
    
    func swim() -> String {
        return "\(self.name) swims"
    }
    
}

class GermanSoldier: Solider, Athletic {
    func playFootball() -> String {
        if self.armour > 20 {
            return "\(self.name) unload armour before play football"
        } else  {
            self.blood -= 10
            return "\(self.name) plays footbal"
        }
    }
    
    func swim() -> String {
        if self.armour > 10 {
            return "\(self.name) unload armour before swim"
        } else  {
            self.blood -= 5
            return "\(self.name) swims"
        }
    }
}
class ProtocolDelegateDemo: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoProtocol()
    }
    
    func demoProtocol() {
        
        let tm1 = TechMasterStudent(name: "Cuong", age: 21)
        let tm2 = TechMasterStudent(name: "Jim", age: 30)
        let sol1 = GermanSoldier(isEnemy: false, name: "Rudolfer Hesser")
        
       /* let people: [Athletic] = [tm1, tm2, sol1]
        for sportman in people {
            self.inRa(sportman.swim())
        }*/
        
        let people2 = [tm1, tm2, sol1]
        for person in people2 {
            if let athletic = person as? Athletic {
                self.inRa(athletic.swim())
                self.inRa(athletic.playFootball())
            }
        }
    
        
        
    }

}
