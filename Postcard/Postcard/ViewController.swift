//
//  ViewController.swift
//  Postcard
//
//  Created by kabimany on 5/27/17.
//  Copyright © 2017 kabimany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        messageLabel.isHidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.red
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        MailButton.setTitle("Mail Sent", for: UIControlState.normal)
    }

}

