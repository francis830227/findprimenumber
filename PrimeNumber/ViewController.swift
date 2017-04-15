//
//  ViewController.swift
//  PrimeNumber
//
//  Created by Tseng Kai Ping on 2017/3/30.
//  Copyright © 2017年 Tseng Kai Ping. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputTextField: UITextField!
    
    
    @IBAction func doThePrimeTest(_ sender: UIButton) {
        if inputTextField.text == "" {
            resultLabel.text = "Please enter a number > 0."
            resultLabel.isHidden = false
        }else{
            let inputNumber = Int(inputTextField.text!)!
            var isPrime = 1
            //1:prime 2:not prime 0: please reenter
            
            if inputNumber == 0 {
                isPrime = 0
            }else if inputNumber == 1 {
                isPrime = 2
            }else {
                for i in stride(from: 2, to: inputNumber-1, by: 1 ) {
                    if inputNumber % i == 0 {
                        isPrime = 2
                    }
                }
            }
            if isPrime == 0 {
                resultLabel.text = "Please enter a number > 0."
            }else if isPrime == 1 {
                resultLabel.text = "That's it!"
            }else if isPrime == 2 {
                resultLabel.text = "\(inputTextField.text!) is not a prime."
            }
            resultLabel.isHidden = false
        }
        inputTextField.text = ""
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.becomeFirstResponder()
        //直接顯示鍵盤
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override var prefersStatusBarHidden: Bool {
        return true
        //隱藏狀態列
    }

}

