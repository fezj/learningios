//
//  ViewController.swift
//  testapp
//
//  Created by Faizan Jilani on 1/11/15.
//  Copyright (c) 2015 Faizan Jilani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        enterMessageTextField.resignFirstResponder()
        if enterMessageTextField.text.isEmpty {
            messageLabel.hidden = true
            let alertController = UIAlertController(title: "Error", message: "Please enter a message", preferredStyle: UIAlertControllerStyle.Alert)
            var okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
                UIAlertAction in
                NSLog("OK Pressed")
            }
            alertController.addAction(okAction);
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            messageLabel.hidden = false
            messageLabel.text = enterMessageTextField.text
            messageLabel.textColor = UIColor.redColor()
            
            sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        }
    }

}

