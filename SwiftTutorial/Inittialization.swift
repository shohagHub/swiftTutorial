//
//  Inittialization.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 17/12/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit



struct Size2 {
    var width = 0.0
    var height = 0.0
}

struct Celcius {
    var temperatureInCelcius: Double
    init(fromFarenheit fahrenheit: Double) {
        temperatureInCelcius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelcius = kelvin - 273.15
    }
}

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

class Inittialization: NSObject {

}


// Designated and convenience initialization in action
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
    
}

