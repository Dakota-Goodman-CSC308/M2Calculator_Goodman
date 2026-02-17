//
//  ViewController.swift
//  M2Calculator_Goodman
//
//  Created by Goodman, Dakota K. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    /*
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle:.alert)
        
        let plusAction = UIAlertAction(title: "+(plus)", style: .default) { _ in
            self.selectOperator.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        
        let minusAction = UIAlertAction(title: "-(minus)", style: .default) { _ in
            self.selectOperator.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title: "*(multiply)", style: .default) { _ in
            self.selectOperator.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title: "/(divide)", style: .default) { _ in
            self.selectOperator.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true)
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func resultButton(_ sender: Any) {
        let op1 = Int(operand1TextField.text!)!
        let op2 = Int(operand2TextField.text!)!
        let op = selectOperator.title(for: .normal)
        
        if op == "+" {
            let result = op1 + op2
            resultLabel.text = "\(result)"
        }else if op == "-" {
            let result = op1 - op2
            resultLabel.text = "\(result)"
        }else if op == "*" {
            let result = op1 * op2
            resultLabel.text = "\(result)"
        }else if op == "/" {
            let result = op1 / op2
            resultLabel.text = "\(result)"
        }else{
            print("Invalid Operator")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
 */
    
    @IBAction func resultButton(_sender: Any){
        guard let op1 = operand1TextField.text, let a = Int(op1)else{
            return
        }
        guard let op2 = operand2TextField.text, let b = Int(op2)else{
            return
        }
        guard let op = selectOperator.title(for: .normal)else{
            return
        }
        
        var result: Int? = nil
       
        switch op{
        case"+":
            result = a + b
        case "-":
            result = a - b
        case "*":
            result = a * b
        case"/":
            result = a / b
        default:
            print("Please select an operator")
            
        }
        guard let result = result else{
            return
        }
        resultLabel.text = "\(result)"
    }
}
