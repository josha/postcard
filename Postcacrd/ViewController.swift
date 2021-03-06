//
//  ViewController.swift
//  Postcacrd
//
//  Created by Josh Anon on 10/22/14.
//  Copyright (c) 2014 Josh Anon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.blueColor();
        
        nameLabel.hidden = false;
        nameLabel.text = "From \(enterNameTextField.text)";
        
        enterNameTextField.text = "";
        enterMessageTextField.text = "";
        
        if enterNameTextField.isFirstResponder() {
            enterNameTextField.resignFirstResponder();
        } else if enterMessageTextField.isFirstResponder() {
            enterMessageTextField.resignFirstResponder();
        }
        
        mailButton.setTitle("Mail Sent!", forState:UIControlState.Normal);
    }

}

