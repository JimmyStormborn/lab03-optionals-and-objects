//
//  Complex.swift
//  prog3.3
//
//  Created by James Bird-Sycamore on 7/25/18.
//  Copyright © 2018 James Bird-Sycamore. All rights reserved.
//

import Foundation

/**
 Represents a complex number
 
 */
class Complex : CustomStringConvertible {
    
    // STORED PROPERTIES
    
    var real: Float;   // Real part of the number
    var imag: Float;   // Imaginary part of the number
    
    // COMPUTED PROPERTIES
    
    /**
     - returns: Float Magnitude of the complex number
     */
    var magnitude: Float {
        return (self.real*self.real)+(self.imag*self.imag)
    }
    
    /**
     - returns: String String representation of a complex number
     */
    var description: String {
        if self.imag >= 0 {
            return "\(self.real)+\(self.imag)i"
        } else {
            return "\(self.real)-\(-self.imag)i"
        }
    }
    
    
    // INITIALISERS
    
    
    /**
     Designated initialiser
     
     Real and imaginary parts are passed in the arguments of the initialiser.
     
     - parameter real Real part of the numerator
     - parameter imag Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        self.real = real
        self.imag = imag
    }
    
    /**
     Default initialiser
     
     Sets complex number to 0
     */
    convenience init() {
        self.init(real: 0, imag: 0)
    }
    
    // METHODS
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        return c1+c2
    }
    
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        return c1-c2
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        return c1*c2
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        return c1/c2
    }
    
    /**
     Makes a copy of the complex
     
     - returns: A copy of the complex
     */
    func copy() -> Complex {
        return Complex(real: self.real, imag: self.imag)
    }
}

/**
 + operator between two Complex numbers
 */
func +(c1: Complex, c2: Complex) -> Complex {
    return Complex(real: c1.real+c2.real,
                   imag: c1.imag+c2.imag)
}

/**
 - operator between two Complex numbers
 */
func -(c1: Complex, c2: Complex) -> Complex {
    return Complex(real: c1.real-c2.real,
                   imag: c1.imag-c2.imag)
}

/**
 * operator between two Complex numbers
 */
func *(c1: Complex, c2: Complex) -> Complex {
    return Complex(real: c1.real*c2.real-c1.imag*c2.imag,
                   imag: c1.real*c2.imag+c1.imag*c2.real)
}

/**
 / operator between two Complex numbers
 */
func /(c1: Complex, c2: Complex) -> Complex {
    return Complex(real: ((c1.real*c2.real+c1.imag*c2.imag)/c2.magnitude),
                   imag: ((c1.imag*c2.real-c1.real*c2.imag)/c2.magnitude))
}

/**
 + operator between a Complex number and a Float
 */
func +(c: Complex, x: Float) -> Complex {
    return Complex(real: c.real+x, imag: c.imag)
}

/**
 - operator between a Complex number and a Float
 */
func -(c: Complex, x: Float) -> Complex {
    return Complex(real: c.real-x, imag: c.imag)
}

/**
 * operator between a Complex number and a Float
 */
func *(c: Complex, x: Float) -> Complex {
    return Complex(real: c.real*x, imag: c.imag*x)
}

/**
 / operator between a Complex number and a Float
 */
func /(c: Complex, x: Float) -> Complex {
    return Complex(real: c.real/x, imag: c.imag/x)
}


