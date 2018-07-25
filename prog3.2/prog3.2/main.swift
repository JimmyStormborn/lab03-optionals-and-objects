//
//  main.swift
//  prog3.2
//
//  Created by James Bird-Sycamore on 7/25/18.
//  Copyright © 2018 James Bird-Sycamore. All rights reserved.
//

import Foundation

//Declare variable x as an optional Int
var x: Int?

//Assign nil to x
x = nil

//Print x (the forcing avoids Xcode warning message)
print("x=\(x as Int?)")

//Check if x has a value or not
if x == nil {
    print("x has no value")
} else {
    //If x has a value, unwrap that value
    //and print it
    print("x has a value fo \(x!)")
}

//Assign a value of 3 to x
x = 3

//Print x
print("x=\(x as Int?)")

//Check if x has a value or not
if let xunwrapped = x {
    //Checking through a let will automatically
    //unwrap a no-nil optional into a constant,
    //so no need to unwrap
    print("x has a value of \(xunwrapped)")
} else {
    print("x has no value")
}

//Declare variable z as an optional Fraction
var z: Fraction?

//Assign a Fraction object 1/3 to z
z = Fraction(num: 1, den: 3)

//Print z
print("z=\(z as Fraction?)")

//Check if z has a value or not
if let zu = z {
    //Checking through a let will automatically
    //unwrap a no-nil optional into a constant,
    //so no need to unwrap
    print("z has a value of \(zu)")
    print("The decimal property of z's value is \(zu.decimal)")
} else {
    print("z has no value")
}

