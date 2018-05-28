//
//  CoreBluetooth.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 13/12/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit
import CoreBluetooth
class CoreBluetooth: NSObject, CBCentralManagerDelegate {
    
    
    
    var myCentralManager: CBCentralManager?
    
    func create() {
        myCentralManager = CBCentralManager.init(delegate: self, queue: nil, options: nil)
        //CBCentralManager.init(delegate: <#T##CBCentralManagerDelegate?#>, queue: <#T##DispatchQueue?#>)
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("centralMangerDidUpdate")
        myCentralManager?.scanForPeripherals(withServices: nil, options: nil)
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        let device = (advertisementData as NSDictionary).object(forKey: CBAdvertisementDataLocalNameKey)
        print(device)
        
    }

}
