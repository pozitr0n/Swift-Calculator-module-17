//
//  ViewController.swift
//  Calculator_iOS
//
//  Created by Raman Kozar on 22/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // connecting elements with the code
    @IBOutlet weak var workAndResult: UILabel!
    
    // outlets of the buttons
    @IBOutlet weak var buttonPercent: UIButton!
    @IBOutlet weak var buttonDeleteAll: UIButton!
    @IBOutlet weak var buttonDeleteOne: UIButton!
    @IBOutlet weak var buttonDivide: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonMultiplication: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonFraction: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    
    
    // all the operations and result (in common string)
    var workingOperations: String = ""

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        buttonPercent.addTarget(self, action: #selector(buttonPercentTouchUpInside), for: .touchUpInside)
        buttonPercent.addTarget(self, action: #selector(buttonPercentOnDown), for: .touchDown)
        
        buttonDeleteAll.addTarget(self, action: #selector(buttonDeleteAllTouchUpInside), for: .touchUpInside)
        buttonDeleteAll.addTarget(self, action: #selector(buttonDeleteAllOnDown), for: .touchDown)
        
        buttonDeleteOne.addTarget(self, action: #selector(buttonDeleteOneTouchUpInside), for: .touchUpInside)
        buttonDeleteOne.addTarget(self, action: #selector(buttonDeleteOneOnDown), for: .touchDown)
        
        buttonDivide.addTarget(self, action: #selector(buttonDivideTouchUpInside), for: .touchUpInside)
        buttonDivide.addTarget(self, action: #selector(buttonDivideOnDown), for: .touchDown)
        
        buttonSeven.addTarget(self, action: #selector(buttonSevenTouchUpInside), for: .touchUpInside)
        buttonSeven.addTarget(self, action: #selector(buttonSevenOnDown), for: .touchDown)
        
        buttonEight.addTarget(self, action: #selector(buttonEightTouchUpInside), for: .touchUpInside)
        buttonEight.addTarget(self, action: #selector(buttonEightOnDown), for: .touchDown)
        
        buttonNine.addTarget(self, action: #selector(buttonNineTouchUpInside), for: .touchUpInside)
        buttonNine.addTarget(self, action: #selector(buttonNineOnDown), for: .touchDown)
        
        buttonMultiplication.addTarget(self, action: #selector(buttonMultiplicationTouchUpInside), for: .touchUpInside)
        buttonMultiplication.addTarget(self, action: #selector(buttonMultiplicationOnDown), for: .touchDown)
        
        buttonFour.addTarget(self, action: #selector(buttonFourTouchUpInside), for: .touchUpInside)
        buttonFour.addTarget(self, action: #selector(buttonFourOnDown), for: .touchDown)
        
        buttonFive.addTarget(self, action: #selector(buttonFiveTouchUpInside), for: .touchUpInside)
        buttonFive.addTarget(self, action: #selector(buttonFiveOnDown), for: .touchDown)
        
        buttonMinus.addTarget(self, action: #selector(buttonMinusTouchUpInside), for: .touchUpInside)
        buttonMinus.addTarget(self, action: #selector(buttonMinusOnDown), for: .touchDown)
        
        buttonSix.addTarget(self, action: #selector(buttonSixTouchUpInside), for: .touchUpInside)
        buttonSix.addTarget(self, action: #selector(buttonSixOnDown), for: .touchDown)
        
        buttonOne.addTarget(self, action: #selector(buttonOneTouchUpInside), for: .touchUpInside)
        buttonOne.addTarget(self, action: #selector(buttonOneOnDown), for: .touchDown)
        
        buttonTwo.addTarget(self, action: #selector(buttonTwoTouchUpInside), for: .touchUpInside)
        buttonTwo.addTarget(self, action: #selector(buttonTwoOnDown), for: .touchDown)
        
        buttonThree.addTarget(self, action: #selector(buttonThreeTouchUpInside), for: .touchUpInside)
        buttonThree.addTarget(self, action: #selector(buttonThreeOnDown), for: .touchDown)
        
        buttonPlus.addTarget(self, action: #selector(buttonPlusTouchUpInside), for: .touchUpInside)
        buttonPlus.addTarget(self, action: #selector(buttonPlusOnDown), for: .touchDown)
        
        buttonZero.addTarget(self, action: #selector(buttonZeroTouchUpInside), for: .touchUpInside)
        buttonZero.addTarget(self, action: #selector(buttonZeroOnDown), for: .touchDown)
        
        buttonFraction.addTarget(self, action: #selector(buttonFractionTouchUpInside), for: .touchUpInside)
        buttonFraction.addTarget(self, action: #selector(buttonFractionOnDown), for: .touchDown)
        
        buttonEqual.addTarget(self, action: #selector(buttonEqualTouchUpInside), for: .touchUpInside)
        buttonEqual.addTarget(self, action: #selector(buttonEqualOnDown), for: .touchDown)
        
        clearTheSymbols(true)
    }
    
    @objc func buttonPercentOnDown() {
        buttonPercent.alpha = 0.8
    }
    
    @objc func buttonPercentTouchUpInside() {
        buttonPercent.alpha = 1
    }
    
    @objc func buttonDeleteAllOnDown() {
        buttonDeleteAll.alpha = 0.8
    }
    
    @objc func buttonDeleteAllTouchUpInside() {
        buttonDeleteAll.alpha = 1
    }
    
    @objc func buttonDeleteOneOnDown() {
        buttonDeleteOne.alpha = 0.8
    }
    
    @objc func buttonDeleteOneTouchUpInside() {
        buttonDeleteOne.alpha = 1
    }
    
    @objc func buttonDivideOnDown() {
        buttonDivide.alpha = 0.8
    }
    
    @objc func buttonDivideTouchUpInside() {
        buttonDivide.alpha = 1
    }
    
    @objc func buttonSevenOnDown() {
        buttonSeven.alpha = 0.8
    }
    
    @objc func buttonSevenTouchUpInside() {
        buttonSeven.alpha = 1
    }
    
    @objc func buttonEightOnDown() {
        buttonEight.alpha = 0.8
    }
    
    @objc func buttonEightTouchUpInside() {
        buttonEight.alpha = 1
    }
    
    @objc func buttonNineOnDown() {
        buttonNine.alpha = 0.8
    }
    
    @objc func buttonNineTouchUpInside() {
        buttonNine.alpha = 1
    }
    
    @objc func buttonMultiplicationOnDown() {
        buttonMultiplication.alpha = 0.8
    }
    
    @objc func buttonMultiplicationTouchUpInside() {
        buttonMultiplication.alpha = 1
    }
    
    @objc func buttonFourOnDown() {
        buttonFour.alpha = 0.8
    }
    
    @objc func buttonFourTouchUpInside() {
        buttonFour.alpha = 1
    }
    
    @objc func buttonFiveOnDown() {
        buttonFive.alpha = 0.8
    }
    
    @objc func buttonFiveTouchUpInside() {
        buttonFive.alpha = 1
    }
    
    @objc func buttonMinusOnDown() {
        buttonMinus.alpha = 0.8
    }
    
    @objc func buttonMinusTouchUpInside() {
        buttonMinus.alpha = 1
    }
    
    @objc func buttonSixOnDown() {
        buttonSix.alpha = 0.8
    }
    
    @objc func buttonSixTouchUpInside() {
        buttonSix.alpha = 1
    }
    
    @objc func buttonOneOnDown() {
        buttonOne.alpha = 0.8
    }
    
    @objc func buttonOneTouchUpInside() {
        buttonOne.alpha = 1
    }
    
    @objc func buttonTwoOnDown() {
        buttonTwo.alpha = 0.8
    }
    
    @objc func buttonTwoTouchUpInside() {
        buttonTwo.alpha = 1
    }
    
    @objc func buttonThreeOnDown() {
        buttonThree.alpha = 0.8
    }
    
    @objc func buttonThreeTouchUpInside() {
        buttonThree.alpha = 1
    }
    
    @objc func buttonPlusOnDown() {
        buttonPlus.alpha = 0.8
    }
    
    @objc func buttonPlusTouchUpInside() {
        buttonPlus.alpha = 1
    }
    
    @objc func buttonZeroOnDown() {
        buttonZero.alpha = 0.8
    }
    
    @objc func buttonZeroTouchUpInside() {
        buttonZero.alpha = 1
    }
    
    @objc func buttonFractionOnDown() {
        buttonFraction.alpha = 0.8
    }
    
    @objc func buttonFractionTouchUpInside() {
        buttonFraction.alpha = 1
    }
    
    @objc func buttonEqualOnDown() {
        buttonEqual.alpha = 0.8
    }
    
    @objc func buttonEqualTouchUpInside() {
        buttonEqual.alpha = 1
    }
    
    @IBAction func persentButton(_ sender: Any) {
    
        if !workingOperations.isEmpty {
        
            let lastSymbol = workingOperations.last!
            
            if checkIfThisNumber(lastSymbol) {
                addToWorkingOperations("%")
            }
            
        }
        
    }
    
    @IBAction func deleteAllTheSymbols(_ sender: Any) {
        clearTheSymbols(true)
    }
    
    @IBAction func deleteSymbol(_ sender: Any) {
        clearTheSymbols(false)
    }
    
    @IBAction func divideOperation(_ sender: Any) {
        addToWorkingOperations("/")
    }
    
    @IBAction func symbolSeven(_ sender: Any) {
        addToWorkingOperations("7")
    }
    
    @IBAction func symbolEight(_ sender: Any) {
        addToWorkingOperations("8")
    }
    
    @IBAction func symbolNine(_ sender: Any) {
        addToWorkingOperations("9")
    }
    
    @IBAction func multiplicationOperation(_ sender: Any) {
        addToWorkingOperations("*")
    }
    
    @IBAction func symbolFour(_ sender: Any) {
        addToWorkingOperations("4")
    }
    
    @IBAction func symbolFive(_ sender: Any) {
        addToWorkingOperations("5")
    }
    
    @IBAction func symbolSix(_ sender: Any) {
        addToWorkingOperations("6")
    }
    
    @IBAction func minusOperation(_ sender: Any) {
        addToWorkingOperations("-")
    }
    
    @IBAction func symbolOne(_ sender: Any) {
        addToWorkingOperations("1")
    }
    
    @IBAction func symbolTwo(_ sender: Any) {
        addToWorkingOperations("2")
    }
    
    @IBAction func symbolThree(_ sender: Any) {
        addToWorkingOperations("3")
    }
    
    @IBAction func additionOperation(_ sender: Any) {
        addToWorkingOperations("+")
    }
    
    @IBAction func symbolZero(_ sender: Any) {
        addToWorkingOperations("0")
    }
    
    @IBAction func fractionSymbol(_ sender: Any) {
        addToWorkingOperations(".")
    }
    
    @IBAction func equalsOperation(_ sender: Any) {
        equalTheResult()
    }
    
    // Function of clearing all the results
    //
    func clearTheSymbols(_ allTheSymbols: Bool) {
        
        if allTheSymbols {
            
            workingOperations = ""
            workAndResult.text = workingOperations
            
        } else {
            
            if !workingOperations.isEmpty {
                workingOperations.removeLast()
                
                var stringForViewing: String = ""
                
                stringForViewing = workingOperations.replacingOccurrences(of: "*", with: "×")
                stringForViewing = stringForViewing.replacingOccurrences(of: "/", with: "÷")
                
                workAndResult.text = stringForViewing
                
            }
            
        }
        
    }
    
    // Function for checking a number
    //
    func checkIfThisNumber(_ value: Character) -> Bool {
        
        if value == "0"
            || value == "1"
            || value == "2"
            || value == "3"
            || value == "4"
            || value == "5"
            || value == "6"
            || value == "7"
            || value == "8"
            || value == "9" {
            
            return true
            
        } else {
            return false
        }
        
    }

    // Function for adding to working area data
    //
    func addToWorkingOperations(_ value: String) {
        
        workingOperations += value
        
        var stringForViewing: String = ""
        
        stringForViewing = workingOperations.replacingOccurrences(of: "*", with: "×")
        stringForViewing = stringForViewing.replacingOccurrences(of: "/", with: "÷")
        
        workAndResult.text = stringForViewing
        
    }

    // Function of equaling the expression
    //
    func equalTheResult() {

        if !workingOperations.isEmpty {
            
            if correctlyInput() {
                
                let checkedWorkingWithPercents = workingOperations.replacingOccurrences(of: "%", with: "*0.01")
                let currentExpression = NSExpression(format: checkedWorkingWithPercents)
                
                let finalResult = currentExpression.expressionValue(with: nil, context: nil) as! Double
                let finalResultInString = formatResult(finalResult)
                
                workAndResult.text = finalResultInString
                
            } else {
                
                let errorAlert = UIAlertController(title: "Invalid input", message: "Unable to perform operation. Try again", preferredStyle: .alert)
                
                errorAlert.addAction(UIAlertAction(title: "OK", style: .default))
                
                self.present(errorAlert, animated: true, completion: nil)
                
            }
            
        } else {
        
            let errorAlert = UIAlertController(title: "Nothing to equal", message: "No data to calculate. Please enter your details and try again.", preferredStyle: .actionSheet)
            
            errorAlert.addAction(UIAlertAction(title: "Try again", style: .cancel))
            
            self.present(errorAlert, animated: true, completion: nil)
            
        }
        
    }

    // Function of formatting the result
    //
    func formatResult(_ result: Double) -> String {
        
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
        
    }

    // Function of validing the expression
    //
    func correctlyInput() -> Bool {
       
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in workingOperations {
           
            if checkSpecialCharacters(char) {
                funcCharIndexes.append(count)
            }
            
            count += 1
        }
        
        var prevChar: Int = -1
        
        for index in funcCharIndexes {
            
            if index == 0 {
                return false
            }
            
            if index == workingOperations.count - 1 {
                return false
            }
            
            if prevChar != -1 {
               
                if index - prevChar == 1 {
                    return false
                }
                
            }
            
            prevChar = index
        }
        
        return true

    }

    // Function of checking special characters
    //
    func checkSpecialCharacters(_ char: Character) -> Bool {
        
        if char == "*" {
            return true
        }
        
        if char == "/" {
            return true
        }
        
        if char == "+" {
            return true
        }
        
        if char == "-" {
            return true
        }
        
        if char == "." {
            return true
        }
        
        return false
        
    }
    
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
