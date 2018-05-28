//
//  Time.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 31/12/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit

class Time {

    func printTime() {
        let date = Date()
        let cal = Calendar.current
        
        let year = cal.component(.year, from: date)
        let month = cal.component(.month, from: date)
        let day = cal.component(.day, from: date)
        let weekday = cal.component(.day, from: date)
        let hour = cal.component(.hour, from: date)
        let minute = cal.component(.minute, from: date)
        let second = cal.component(.second, from: date)
        print(hour)
    }
    
}
