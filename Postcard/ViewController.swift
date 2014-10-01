//
//  ViewController.swift
//  Postcard
//
//  Created by Brendan Boyle on 1/10/2014.
//  Copyright (c) 2014 Brendan Boyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code run when button clicked.
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // Label code for tutorial
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        enterNameTextField.resignFirstResponder()
        enterNameTextField.text=""
        
        
    }

}

