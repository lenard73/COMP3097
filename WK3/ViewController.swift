import UIKit

class ViewController:UIViewController {
        
        @IBOutlet weak var displayLabel: UILabel!
        
        private var currentNumber:String = ""{
            didSet{
                if currentNumber==""{
                     displayLabel.text = "0"
                }else{
                     displayLabel.text = currentNumber
                }
            }
        }
        private var firstOperand: Int? = nil
        private var currentOperation:String? = nil
        
        private func clearAll(){
            currentNumber = ""
            firstOperand = nil
            currentOperation = nil
            displayLabel.text = "0"
        }
        
        @IBAction func operationPressed(_sender: UIButton){
            if let op = currentOperation{
                equalPressed()
            }
            guard let operation = sender.titleLabel?.text, 
                let value = Int{currentNumber}
            else{return}
            
            firstOperand = value
            currentOperation = operation
            currentNumber = ""
            
        }
        
        @IBAction func equalPressed(){
            guard let operation = currentOperation, 
                  let first = firstOperand,
                  let second = Int(currentNumber)
            else{return}
            
            var result = 0
            switch operation{
            case"+":
                result = first+second
            case"-"
                result = first-second
            case"*"
                result = first*second
            case"/"
            if second!=0{
                result = first/second
            }else{
                displayLabel.text = "Error: division by 0"
                currentOperation = nil
                firstOperand = nil
            
                return
                }
            default:
                return
            }
                //displayLabel.text = String(result)
                currentNumber = String (result)
                firstOperand = result
        }
        
        @IBAction func numberPressed(_sender: UIButton) {
            
            guard let digit = sender.titleLabel?.text 
            else {return}
            if currentNumber=="0"{
                currentNumber = ""
            }
            currentNumber += digit 
            //displayLabel.text = currentNumber
            
        }
        
        
        @IBAction func clearPressed(){
            clearAll()
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            clearAll()
        }
    }