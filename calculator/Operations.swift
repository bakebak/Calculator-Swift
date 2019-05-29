//
//  Operations.swift
//  calculator
//
//  Created by Bruno Klein on 28/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

class Operations {
    
    static func sum(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
    
    static func subtraction(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
    static func multiplication(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
    static func division(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
    
    static func squareNumber(number: Double) -> Double {
        return pow(number, 2)
    }
    
    static func squareRoot(number: Double) -> Double {
        return sqrt(number)
    }
}

enum OperationsEnum: String {
    case SUM = "+"
    case SUBTRACTION = "-"
    case MULTIPLICATION = "x"
    case DIVISION = "/"
    case SQUARE_NUMBER = "^2"
    case SQUARE_ROOT = "√"
}

