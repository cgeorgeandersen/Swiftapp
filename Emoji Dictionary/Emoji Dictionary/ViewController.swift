//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Kaitlyn  Caracciolo on 2/16/19.
//  Copyright © 2019 George Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var emojitableview: UITableView!
    
    var emojis = ["🙂","🙁","🤯","🏈","💩","😻"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       emojitableview.dataSource = self
        
        emojitableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
      performSegue(withIdentifier: "MoveSegue", sender: emoji)    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
        
        
        
    }
}



