//
//  ViewController.swift
//  Swift App
//
//  Created by Kaitlyn  Caracciolo on 2/16/19.
//  Copyright © 2019 George Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TheLabel: UILabel!
    
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        let addition = true
        
        if addition {
            
            TheLabel.text = "Answer: \(Double(text1.text!)! + Double(text2.text!)!)"
        } else {
            TheLabel.text = "Answer: \(Double(text1.text!)! - Double(text2.text!)!)"
        }
            
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view, typically from a nib.
            self.view.backgroundColor = UIColor.green
        }
        
        
}

