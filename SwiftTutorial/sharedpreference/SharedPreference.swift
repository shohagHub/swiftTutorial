//
//  SharedPreference.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 29/5/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import Foundation


func writeToSharedPref(){
    let sharedPref = UserDefaults.standard
//    let domainNames = sharedPref.volatileDomainNames
//    for names in domainNames {
//        print(names)
//    }

    sharedPref.set(10, forKey: "test")
}

func readValueFromSharedPref(){
    let sharedPref = UserDefaults.standard
    let valueFromShared = sharedPref.integer(forKey: "test")
    print("\(valueFromShared)")
}
