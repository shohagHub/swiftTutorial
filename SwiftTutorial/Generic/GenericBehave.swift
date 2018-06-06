//
//  GenericBehave.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 2/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class GenericBehave: NSObject {
    
    func genericFunction<T: BaseAggregate>(list: [T]) -> [T]{
        for item in list {
        
            print("\(item.average) -- \(item.max)")
            item.max = item.max + item.average
        }
        return list
    }
    
    func genericTest(){
//        var baseAggregate: BaseAggregate = BaseAggregate.init(average: 10, max: 5)
        var listAggregate = [BloodGlucoseAggregate]()
        for i in 0...5 {
            let newElement = BloodGlucoseAggregate.init(mealType: 10 + i)
            listAggregate.append(newElement)
        }
        let ret = genericFunction(list: listAggregate)
        print(ret)
    }

}
