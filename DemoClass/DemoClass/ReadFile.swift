//
//  ReadFile.swift
//  DemoClass
//
//  Created by Ci Viet on 9/6/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit


class ReadFile: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var path: NSString = NSBundle.mainBundle().pathForResource("File", ofType: "txt")
        var content: NSString = NSString.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
       // println(content)
        
        var array: NSArray = content.componentsSeparatedByString(" ")
       
        for var i = 0 ; i < array.count;++i {
             var count: Int = 0
            for var j = 0; j < array.count;++j {
                if(array[i] as NSObject == array[j] as NSObject) {
                    count += 1
                }
                
            }
            
                self.inRa("So lan xuat hien: \(array[i]) la : \(count)")
            
        }

        
    }

}