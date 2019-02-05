//
//  ViewController.swift
//  calculator
//
//  Created by Kevin Rama on 2/4/19.
//  Copyright © 2019 Kevin Rama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var numberPressed: Double = 0;
    var previousNumber: Double = 0;
    var math = false;
    var operation = 0;
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if (math == true){
            resultLabel.text = String(sender.tag - 1);
            numberPressed = Double(resultLabel.text!)!;
            math = false;
        }
        
        else {
            resultLabel.text = resultLabel.text! + String(sender.tag - 1);
            numberPressed = Double(resultLabel.text!)!;
        }
        
    }
    
    
    
    @IBAction func mathButtons(_ sender: UIButton) {
        
        if ((resultLabel.text != "") && (sender.tag == 11)){
            previousNumber = Double(resultLabel.text!)!;
            resultLabel.text = "+";
            operation = sender.tag;
            math = true;
        }
        
        else if ((resultLabel.text != "") && sender.tag == 12) {
            //EQUAL BUTTON
            resultLabel.text = String(previousNumber + numberPressed);
        }
        else if((resultLabel.text != "") && sender.tag == 13) {
            resultLabel.text = "";
            previousNumber = 0;
            numberPressed = 0;
            operation = 0;
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

