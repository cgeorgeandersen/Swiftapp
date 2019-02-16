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
    
    var tapcount = 0
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        
        tapcount = tapcount + 1
        
        if tapcount >= 3 {
            TheLabel.text = "Ouch Stop It!"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.green
    }


}

