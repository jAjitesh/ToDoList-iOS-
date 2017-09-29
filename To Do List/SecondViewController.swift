//
//  SecondViewController.swift
//  To Do List
//
//  Created by Ajitesh on 12/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func button(_ sender: Any) {
        
        let itemObject = UserDefaults.standard.object(forKey: "item")
        var items = [String]()
        if let itemTemp = itemObject as? NSArray {
            items = itemTemp as! [String]
            items.append(textField.text!)
            print("item added")
        } else{
            items = [textField.text!]
        }
        
        
        UserDefaults.standard.set(items, forKey: "item")
        textField.text! = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

