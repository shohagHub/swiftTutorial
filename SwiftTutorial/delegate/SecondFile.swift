//
//  SecondFile.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 28/5/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import Foundation

protocol SecondProtocol{
    func callFirstFile(_ data: String)
}

class SecondFile{
    var delegate: SecondProtocol?
    func completeTask(){
        //lot of task and func calling here
        for i in 1...10000 {
            print(i)
        }
        
        delegate?.callFirstFile("all task complete")
    }
}
