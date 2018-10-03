//
//  DateTime.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 25/7/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class DateTime: NSObject {
    
    func runDateTime(){
        let currentDate = Date()
        
//        print("\(currentDate)")
        let a = Date.init(timeIntervalSince1970: currentDate.timeIntervalSince1970)
        print("\(a)")
        let b = Int64(currentDate.timeIntervalSinceNow * 1000)
        print("\(b)")
        
        var curDate = Date()
        var d = Int64(curDate.timeIntervalSince1970 * 1000)
        
        let preTime = Date.init(timeIntervalSince1970: 1532543046932 / 1000)
        print("\(preTime)")
    }

}
