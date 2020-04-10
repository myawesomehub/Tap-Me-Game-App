//
//  ViewController.swift
//  Tap Me
//
//  Created by Mohammad Adil on 26/08/19.
//  Copyright © 2019 Mohammad Yasir. All rights reserved.
//

import UIKit
import RealmSwift

var enteredName = ""
var enteredId = ""


class ViewController: UIViewController {

    @IBOutlet weak var enteredNameOut: UITextField!
    @IBOutlet weak var enteredIdOut: UITextField!

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view,
        //typically from a nib.
      
    }
    @IBAction func loginButton(_ sender: UIButton) {
        enteredName = enteredNameOut.text!
        enteredId = enteredIdOut.text!
        arrr.append("1")
        performSegue(withIdentifier: "loginDone", sender: self)
    }
    
    @IBAction func showPt(_ sender: UIButton) {
        performSegue(withIdentifier: "show", sender: self)
    }
    
    
    
}

