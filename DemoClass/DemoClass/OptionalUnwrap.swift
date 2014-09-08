//
//  OptionalUnwrap.swift
//  DemoClass
//
//  Created by techmaster on 8/29/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Person {
    var name: String //non-nill property
    var age: Int = 10 //Default value property
    var numberOfPets: Int? //nillable (optional) property
    var address: Address?
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Address {
    var street: Street?
}

class Street {
    var buildingNo: Int?
}
class OptionalUnwrap: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
       /* self.testPerson()
        self.inRa("------------------")
        self.testLegs()
        
        self.testIndexOfString()*/
        self.testAddress()
    }
    func testAddress() {
        let cuong = Person(name: "Cuong", age: 39)
        self.inRa("building no = \(cuong.address?.street?.buildingNo)")  //chaining optional
        
        if let buildingno = cuong.address?.street?.buildingNo {
            self.inRa("building no = \(buildingno)")
        } else {
            self.inRa("Cuong does not have address")
        }
        
    }
    func testPerson() {
        let cuong = Person(name: "Cuong", age: 39)
        self.inRa("\(cuong.name) has number of pets: \(cuong.numberOfPets)")
        self.inRa("------------------")
        cuong.numberOfPets = 2
        if let numPet = cuong.numberOfPets {
            self.inRa("\(cuong.name) has number of pets: \(numPet)")
            self.inRa("\(cuong.name) has number of pets: \(cuong.numberOfPets)")
        } else {
            self.inRa("\(cuong.name) does not have any pet")
        }
    }
    
    func testLegs() {
        let numOfLegs = ["ant": 8, "human": 2, "tiger": 4, "snake": 0] //Dictionary
        
        if let legOfAnt = numOfLegs["ant"] {
            self.inRa("Ant has \(legOfAnt) legs")
        }
        
        if let legOfCat = numOfLegs["cat"] {
            self.inRa("Cat has \(legOfCat) legs")
        } else {
            self.inRa("Cat has no leg")
        }
        let legcat = numOfLegs["cat"]
        self.inRa("***Cat has \(legcat) legs")
    }
    func testIndexOfString () {
        if let result = self.findIndexOfString2("Mabuhay", array: ["Chao", "Bonjour", "Konhichiwa", "Hello", "Mabuhay"]) {
            self.inRa("Result = \(result)")
        } else {
            self.inRa("Khong tim duoc")
        }
        
    }
    func findIndexOfString(string: String, array: [String])-> Int? {
        //Cu phap moi cua Swift
        for (index, value) in enumerate(array) {
            if value == string {
                return index
            }
        }
        return nil
    }
    
    func findIndexOfString2(string: String, array: [String])-> Int? {
        //vong lap C co dien
        for var i = 0; i < array.count; i++  {
            if string == array[i] {
                return i
            }
        }
        return nil
    }
    
    

}
