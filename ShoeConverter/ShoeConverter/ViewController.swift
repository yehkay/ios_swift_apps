//
//  ViewController.swift
//  ShoeConverter
//
//  Created by kabimany on 5/28/17.
//  Copyright © 2017 yehkay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensShowSizeConvertedLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertButtonPressed(_ sender: Any) {
        let s = mensShoeSizeTextField.text
        let num = Int(s!)
        mensShowSizeConvertedLabel.isHidden = false
        if num != nil{
            mensShowSizeConvertedLabel.text = " \(num! + 30) in European size"
        } else {
            mensShowSizeConvertedLabel.text = "Not a valid number"
        }
    }
    
}

