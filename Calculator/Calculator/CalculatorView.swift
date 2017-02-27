//
//  CalculatorView.swift
//  iosCalculator
//
//  Created by Rome Rock on 11/16/16.
//  Copyright © 2016 Rome Rock. All rights reserved.
//

import UIKit
//import UIView
public class CalculatorView: UIView {

    // MARK: Properties
    
    
    @IBOutlet var contentView: UIStackView!
    @IBOutlet var topView: UIView!
    
    @IBOutlet var historyLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var pointButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var fourButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var eightButton: UIButton!
    @IBOutlet var nineButton: UIButton!
    @IBOutlet var equalButton: UIButton!
    @IBOutlet var okButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var productButton: UIButton!
    @IBOutlet var divideButton: UIButton!
    
    var viewController:UIViewController!
    
    let operationCharacters = ["-", "+", "/", "*"]
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        //topView.roundCorners(corners: [.topRight, .topLeft], radius: 3.0)
        //topView.roundCorners(corners: [.topRight], radius: 3.0)
        //equalButton.roundCorners(corners: [.bottomRight], radius: 3.0)
        //zeroButton.roundCorners(corners: [.bottomLeft], radius: 3.0)
        //icTipImageView.image =  icTipImageView.image?.imageWithColor(color1: UIColor(hex: "FFFFFF")).withRenderingMode(.alwaysOriginal)
    }
    
    // MARK: Set UI Colors
    
    public func setNumbersColor(color:UIColor) {
        pointButton.backgroundColor = color
        zeroButton.backgroundColor = color
        oneButton.backgroundColor = color
        twoButton.backgroundColor = color
        threeButton.backgroundColor = color
        fourButton.backgroundColor = color
        fiveButton.backgroundColor = color
        sixButton.backgroundColor = color
        sevenButton.backgroundColor = color
        eightButton.backgroundColor = color
        nineButton.backgroundColor = color
    }
    
    public func setOperationsColor(color: UIColor) {
        okButton.backgroundColor = color
        minusButton.backgroundColor = color
        plusButton.backgroundColor = color
        productButton.backgroundColor = color
        divideButton.backgroundColor = color
    }
    
    public func setResultsColor(color: UIColor) {
        historyLabel.backgroundColor = color
        resultLabel.backgroundColor = color
    }
    
    public func setOtherButtonsColor(color: UIColor) {
        clearButton.backgroundColor = color
        backButton.backgroundColor = color
        equalButton.backgroundColor = color
    }
    
    public func setPanelTextColor(color: UIColor) {
        clearButton.setTitleColor(color, for: UIControlState.normal)
        backButton.setTitleColor(color, for: UIControlState.normal)
        divideButton.setTitleColor(color, for: UIControlState.normal)
        sevenButton.setTitleColor(color, for: UIControlState.normal)
        eightButton.setTitleColor(color, for: UIControlState.normal)
        nineButton.setTitleColor(color, for: UIControlState.normal)
        productButton.setTitleColor(color, for: UIControlState.normal)
        fourButton.setTitleColor(color, for: UIControlState.normal)
        fiveButton.setTitleColor(color, for: UIControlState.normal)
        sixButton.setTitleColor(color, for: UIControlState.normal)
        plusButton.setTitleColor(color, for: UIControlState.normal)
        oneButton.setTitleColor(color, for: UIControlState.normal)
        twoButton.setTitleColor(color, for: UIControlState.normal)
        threeButton.setTitleColor(color, for: UIControlState.normal)
        minusButton.setTitleColor(color, for: UIControlState.normal)
        zeroButton.setTitleColor(color, for: UIControlState.normal)
        pointButton.setTitleColor(color, for: UIControlState.normal)
        equalButton.setTitleColor(color, for: UIControlState.normal)
        okButton.setTitleColor(color, for: UIControlState.normal)
    }
    
    // MARK: Button Actions
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        if historyLabel.text == "0" {
            resultLabel.text = "0"
        } else {
            historyLabel.text = "0"
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        if (historyLabel.text?.characters.count)! > 1  {
            historyLabel.text?.remove(at: (historyLabel.text?.index(before: (historyLabel.text?.endIndex)!))!)
        } else {
            if historyLabel.text != "0" {
                historyLabel.text = "0"
            }
        }
    }
    
    @IBAction func divideButtonPressed(_ sender: Any) {
        addOperation(symbol: "/")
    }

    @IBAction func sevenButtonPressed(_ sender: Any) {
        addNumber(digit: "7")
    }
    
    @IBAction func eightButtonPressed(_ sender: Any) {
        addNumber(digit: "8")
    }
    
    @IBAction func nineButtonPressed(_ sender: Any) {
        addNumber(digit: "9")
    }

    @IBAction func productButtonPressed(_ sender: Any) {
        addOperation(symbol: "*")
    }
    
    @IBAction func fourButtonPressed(_ sender: Any) {
        addNumber(digit: "4")
    }
    
    @IBAction func fiveButtonPressed(_ sender: Any) {
        addNumber(digit: "5")
    }
    
    @IBAction func sixButtonPressed(_ sender: Any) {
        addNumber(digit: "6")
    }
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        addOperation(symbol: "+")
    }
    
    @IBAction func oneButtonPressed(_ sender: Any) {
        addNumber(digit: "1")
    }
    
    @IBAction func twoButtonPressed(_ sender: Any) {
        addNumber(digit: "2")
    }
    
    @IBAction func threeButtonPressed(_ sender: Any) {
        addNumber(digit: "3")
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        addOperation(symbol: "-")
    }
    
    @IBAction func zeroButtonPressed(_ sender: Any) {
        addNumber(digit: "0")
        
    }
    
    @IBAction func pointButtonPressed(_ sender: Any) {
        addNumber(digit: ".")
    }
    
    @IBAction func equalButtonPressed(_ sender: Any) {
        let lastChar = historyLabel.text?.characters.last!
        if !operationCharacters.contains("\(lastChar!)") && lastChar! != "." {
            let engine:Engine = Engine()
            let postFixResult = engine.parseInfix(e: historyLabel.text!)
            if postFixResult != "E" {
                resultLabel.text = "\(engine.evalRPN(token: postFixResult))"
            }
        }
    }
    
    @IBAction func okButtonPressed(_ sender: Any) {
        /*UIView.animate(withDuration: 0.25, animations: {
            self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.removeFromSuperview()
                self.viewController.dismiss(animated: false, completion: nil)
            }
        });*/
        self.viewController.dismiss(animated: true, completion: nil)
    }
    @IBAction func closeButtonPressed(_ sender: Any) {
        self.viewController.dismiss(animated: true, completion: nil)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch:UITouch? = touches.first
        let touchLocation = touch?.location(in: self)
        let contentViewFrame = self.convert(contentView.frame, from: contentView.superview)
        if !contentViewFrame.contains(touchLocation!) {
            self.viewController.dismiss(animated: true, completion: nil)
        }
        
    }
    
    // MARK: Helper Methods
    
    private func addOperation(symbol: String) {
        let lastChar = historyLabel.text?.characters.last!
        if !operationCharacters.contains("\(lastChar!)") && lastChar! != "." {
            historyLabel.text! += " \(symbol)"
        }
    }
    
    private func addNumber(digit: String) {
        let lastChar = historyLabel.text?.characters.last!
        if historyLabel.text == "0" {
            historyLabel.text = digit
        } else if !operationCharacters.contains("\(lastChar!)") || lastChar! == "." {
            historyLabel.text! += digit
        }
        else {
            historyLabel.text! += " \(digit)"
        }
    }
    
    public func addView(view: UIView) {
        //self.center = view.center
        view.addSubview(self)
        self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 1.0
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
        
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    // MARK: Helper Class
    class Engine: NSObject {
        let operationsRanking = [
            //"^": (prec: 4, rAssoc: true),
            "*": (prec: 3, rAssoc: false),
            "/": (prec: 3, rAssoc: false),
            "+": (prec: 2, rAssoc: false),
            "-": (prec: 2, rAssoc: false),
            ]
        
        func rpn(tokens: [String]) -> [String] {
            var rpn : [String] = []
            var stack : [String] = [] // holds operators and left parenthesis
            
            for token in tokens {
                switch token {
                case "(":
                    stack += [token] // push "(" to stack
                case ")":
                    while !stack.isEmpty {
                        let operation = stack.removeLast() // pop item from stack
                        if operation == "(" {
                            break // discard "("
                        } else {
                            rpn += [operation] // add operator to result
                        }
                    }
                default:
                    if let operation1 = operationsRanking[token] { // token is an operator?
                        for operation in stack.reversed() {
                            if let operation2 = operationsRanking[operation] {
                                if !(operation1.prec > operation2.prec || (operation1.prec == operation2.prec && operation1.rAssoc)) {
                                    // top item is an operator that needs to come off
                                    rpn += [stack.removeLast()] // pop and add it to the result
                                    continue
                                }
                            }
                            break
                        }
                        
                        stack += [token] // push operator (the new one) to stack
                    } else { // token is not an operator
                        if Double(token) != nil {
                            rpn += [token]
                        } else {
                            // Handle a bad number
                            return ["E"]
                        }
                    }
                }
            }
            
            return rpn + stack.reversed()
        }
        
        func parseInfix(e: String) -> String {
            let tokens = e.characters.split{ $0 == " " }.map(String.init)
            return rpn(tokens: tokens).joined(separator: " ")
        }
        
        func evalRPN(token: String) -> Double {
            let tokens = token.characters.split{ $0 == " " }.map(String.init)
            var stack = [String]()
            for s in tokens {
                switch s {
                case "+":
                    let rightOperand = Double(stack.removeLast())
                    let leftOperand = Double(stack.removeLast())
                    stack.append(String(leftOperand! + rightOperand!))
                case "-":
                    let rightOperand = Double(stack.removeLast())
                    let leftOperand = Double(stack.removeLast())
                    stack.append(String(leftOperand! - rightOperand!))
                case "*":
                    let rightOperand = Double(stack.removeLast())
                    let leftOperand = Double(stack.removeLast())
                    stack.append(String(leftOperand! * rightOperand!))
                case "/":
                    let rightOperand = Double(stack.removeLast())
                    let leftOperand = Double(stack.removeLast())
                    stack.append(String(leftOperand! / rightOperand!))
                default:
                    stack.append(s)
                }
            }
            return Double(stack.removeLast())!
        }

    }
    
}
