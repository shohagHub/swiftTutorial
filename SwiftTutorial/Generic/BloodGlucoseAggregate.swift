//
//  BloodGlucoseAggregate.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 2/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class BloodGlucoseAggregate: BaseAggregate {

    var mealType: Int
    
    init(mealType: Int){
        self.mealType = mealType
        super.init(average: 10, max: 20)
    }
    
}
