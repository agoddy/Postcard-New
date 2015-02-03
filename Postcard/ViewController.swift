//
//  ViewController.swift
//  Postcard
//
//  Created by Sege_Oba on 1/6/15.
//  Copyright (c) 2015 Argos Technologies Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtEnterName: UITextField!
    
    @IBOutlet weak var txtEnterMessage: UITextField!
    
    @IBOutlet weak var btnSendMessage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMessage(sender: UIButton) {
        lblMessage.text = "Message Sent"
        lblMessage.hidden = false;
        lblName.hidden = false;
        lblName.text = "Hello " + txtEnterName.text;
        lblName.textColor = UIColor.blueColor();
        txtEnterName.text = ""
        txtEnterName.resignFirstResponder();
        txtEnterMessage.text = "";
        txtEnterMessage.resignFirstResponder();
        lblMessage.textColor = UIColor.redColor();
        btnSendMessage.setTitle("Mail Sent", forState:UIControlState.Normal)
        btnSendMessage.enabled = false
    }

}

