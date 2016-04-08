//
//  main.swift
//  calculator-v2
//
//  Created by Trevor Allen on 4/7/16.
//  Copyright © 2016 Trevor Allen. All rights reserved.
//

import Foundation

// Build a Calculator
func add(x: Int, y: Int) -> Int {
    return x + y;
}

func subtract(x: Int, y: Int) -> Int {
    return x - y;
}

func multiply(x: Int, y: Int) -> Int {
    return x * y;
}

func divide(x: Int, y: Int) -> Int {
    return x / y;
}

func performOp(x: Int, y: Int, op: (Int, Int) -> Int) -> Int {
    return op(x, y);
}


// Array fun
func addArray(arr: [Int]) -> Int {
    var sum = 0;
    for i in arr {
        sum += i
    }
    return sum;
}

func multiplyArray(arr: [Int]) -> Int {
    var product = 1;
    for i in arr {
        product *= i;
    }
    return product;
}

func count(arr: [Int]) -> Int {
    return arr.count
}

func avg(arr: [Int]) -> Int {
    return addArray(arr) / count(arr)
}

func performMathOnArray(arr: [Int], op: ([Int]) -> Int) -> Int {
    return op(arr);
}


// Points
func addPoints(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtractPoints(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func addDictionaries(p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> Dictionary<String, Int!> {
    let x = p1["x"]! + p2["x"]!
    let y = p1["y"]! + p2["y"]!
    return ["x": x, "y": y]
}

func subtractDictionaries(p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> Dictionary<String, Int!> {
    let x = p1["x"]! - p2["x"]!
    let y = p1["y"]! - p2["y"]!
    return ["x": x, "y": y]
}


print(performOp(10, y: 11) {$0 + $1})
print(performMathOnArray([1, 2, 3, 4, 5], op: addArray))
print(addPoints((1, 2), p2: (3, 4)))
print(addDictionaries(["x": 1, "y": 2], p2: ["x": 3, "y": 4]))


















