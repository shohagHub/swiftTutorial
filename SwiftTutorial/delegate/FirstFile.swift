//
//  FirstFile.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 28/5/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import Foundation


class FirstFile: SecondProtocol{
    func callFirstFile(_ data: String) {
        print("Task is completed from SecondFile")
        print("Value from SecondFile \(data)")
        
    }
    
    
    func doSomeTask(){
        let secondFile: SecondFile = SecondFile()
        secondFile.delegate = self
        secondFile.completeTask()    }
    
}
