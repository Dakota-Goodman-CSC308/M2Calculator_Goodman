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
    
    var selectedOperator: Operator?
    
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle:.alert)
        
        let plusAction = UIAlertAction(title: "+(plus)", style: .default) { _ in
            self.selectOperator.setTitle("+", for: .normal)
            self.selectedOperator = .plus
        }
        actionSheet.addAction(plusAction)
        
        let minusAction = UIAlertAction(title: "-(minus)", style: .default) { _ in
            self.selectOperator.setTitle("-", for: .normal)
            self.selectedOperator = .minus
        }
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title: "*(multiply)", style: .default) { _ in
            self.selectOperator.setTitle("*", for: .normal)
            self.selectedOperator = .multiply
        }
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title: "/(divide)", style: .default) { _ in
            self.selectOperator.setTitle("/", for: .normal)
            self.selectedOperator = .divide
        }
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true)
        
    }
    
    func showAlert (message: String, title: String? = "Alert"){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func resultButton(_sender: Any){
        guard let op1 = operand1TextField.text, let a = Int(op1)else{
            operand1TextField.becomeFirstResponder()
            showAlert(message: "Please enter a number.", title: "op1 Error")
            return
        }
        guard let op2 = operand2TextField.text, let b = Int(op2)else{
            showAlert(message: "Please enter a number.")
            return
        }
        guard let op = selectedOperator else{
            operand2TextField.becomeFirstResponder()
            showAlert(message: "Please select an operator.")
            return
        }
        
        var result: Int? = nil
       
        switch op{
        case .plus:
            result = a + b
        case .minus:
            result = a - b
        case .multiply:
            result = a * b
        case .divide:
            result = a / b
        }
        guard let result = result else{
            return
        }
        resultLabel.text = "\(result)"
        
        if operand1TextField.isFirstResponder{
            operand1TextField.resignFirstResponder()
        }else{
            operand2TextField.resignFirstResponder()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operand1TextField.delegate = self
        operand2TextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        operand1TextField.becomeFirstResponder()
    }
}

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else{
            return true
        }
        guard let text = Int(string) else{
            return false
        }
        return true
    }
}
