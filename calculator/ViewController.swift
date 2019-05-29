//
//  ViewController.swift
//  calculator
//
//  Created by Bruno Klein on 28/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Double = 0
    var operation: String = ""
    var resultValue: Double = 0
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func operationButtonOnClick(_ sender: UIButton) {
        self.operation = sender.titleLabel?.text ?? ""

        let oldNumber = self.mainLabel?.text ?? ""
        self.firstNumber = Double(oldNumber) ?? 0
        
        self.mainLabel.text = "\(oldNumber) \(self.operation) "
    }
    
    @IBAction func numberButtonOnClick(_ sender: UIButton) {
        let number = sender.titleLabel?.text ?? ""
        var displayedNumber = self.mainLabel.text ?? ""
        
        if displayedNumber == "0" {
            displayedNumber = ""
        }
        
        let fullNumber = "\(displayedNumber)\(number)"

        self.mainLabel.text = fullNumber
    }
    
    @IBAction func resultButtonOnClick(_ sender: UIButton) {
        let lastNumber = self.mainLabel.text ?? ""
        let bla = lastNumber.components(separatedBy: "\(self.operation) ")
        let formattedNumber =  Double(bla[1]) ?? 0
        
        getResult(buttonText: self.operation, secondValue: formattedNumber)
        
        self.resultLabel.text = String(self.resultValue)
        self.mainLabel.text = "0"
    }
    
    @IBAction func clearButtonOnClick(_ sender: UIButton) {
        self.mainLabel.text = "0"
        self.resultLabel.text = "0"
        self.firstNumber = 0
        self.operation = ""
        self.resultValue = 0
    }
    
    private func getResult(buttonText value: String, secondValue secondNumber: Double) {
        let enumVal = OperationsEnum(rawValue: value)!
        
        switch enumVal {
            case OperationsEnum.SUM:
                self.resultValue = Operations.sum(firstNumber: self.firstNumber, secondNumber: secondNumber)
                break
            case OperationsEnum.SUBTRACTION:
                self.resultValue = Operations.subtraction(firstNumber: self.firstNumber, secondNumber: secondNumber)
                break
            case OperationsEnum.MULTIPLICATION:
                self.resultValue = Operations.multiplication(firstNumber: self.firstNumber, secondNumber: secondNumber)
                break
            case OperationsEnum.DIVISION:
                self.resultValue = Operations.division(firstNumber: self.firstNumber, secondNumber: secondNumber)
                break
            case OperationsEnum.SQUARE_NUMBER:
                self.resultValue = Operations.squareNumber(number:  self.firstNumber)
                break
            case OperationsEnum.SQUARE_ROOT:
                self.resultValue = Operations.squareRoot(number:  self.firstNumber)
                break
        }
    }

}
