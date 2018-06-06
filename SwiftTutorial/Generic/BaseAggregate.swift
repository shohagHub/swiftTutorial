//
//  BaseAggregate.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 1/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class BaseAggregate: NSObject {
    
    var average: Int
    var max: Int
    
    init(average: Int, max: Int) {
        self.average = average
        self.max = max
        super.init()
    }

}
