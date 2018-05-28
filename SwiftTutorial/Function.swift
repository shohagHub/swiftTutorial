//
//  Function.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 11/18/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit

//Tutorial swift 4.0 functions
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

func testfly(label pName: inout Int) -> Int {
    pName = 100
    return pName;
}


func greet(person: String, from homeTown: String) -> String{
    return "Hello \(person) Glad you could visit from \(homeTown)."
}

func someFunction(firstParamenterName: Int, secondParamenterName: Int){
    
}

func someFunction(argumentLabel firstParameterName: Int){
    
}

//omiting argument label
func someFunction(_ firstParamenterName: Int, secondParamenterName: Int) {
    
}
//default parameter value
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    
}
@discardableResult
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

func swap(_ a: inout Int, _ b: inout Int){
    let temporaryA = b
    a = b
    b = temporaryA
}

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}



func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

/*
 * funcation as return types
 */

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backword: Bool) -> (Int) -> Int {
    return backword ? stepBackward : stepForward
}
func usingFunctionTypes() {
    //    var mathFunction: (Int, Int) -> Int
    //    mathFunction = addTwoInts
    //    print(mathFunction(2, 3))
    //    mathFunction = multiplyTwoInts
    //    print(multiplyTwoInts(2, 3))
    printMathResult(addTwoInts, 4, 7)
    printMathResult(multiplyTwoInts, 10, 12)
    
    var currentValue = 3
    let moveNearerToZero: (Int) -> Int = chooseStepFunction(backword: currentValue > 0)
    print("Counting to zero: ")
    
    // Counting to zero:
    while currentValue != 0 {
        print("\(currentValue)...")
        currentValue = moveNearerToZero(currentValue)
    }
    print("zero!")
    
}


class Function: NSObject {

}
