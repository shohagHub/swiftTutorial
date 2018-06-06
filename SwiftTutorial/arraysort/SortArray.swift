//
//  SortArray.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 6/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class SortArray: NSObject {

    func sortArray(){
        let ag1 = BloodGlucoseAggregate.init(mealType: 10)
        let ag2 = BloodGlucoseAggregate.init(mealType: 11)
        let ag3 = BloodGlucoseAggregate.init(mealType: 12)
        let ag4 = BloodGlucoseAggregate.init(mealType: 12)
        
        var array = [BloodGlucoseAggregate]()
        array.append(ag1)
        array.append(ag2)
        array.append(ag3)
        array.append(ag4)
        
        array.sort(by: {(agg1: BloodGlucoseAggregate, agg2: BloodGlucoseAggregate) -> Bool in
            if agg1.mealType > agg2.mealType{
                return true
            }
            else if agg1.mealType == agg2.mealType || agg1.mealType < agg2.mealType{
                return false
            }
            return true
        })
        print(array)
    }
    
}
